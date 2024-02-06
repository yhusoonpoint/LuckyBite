using Accord.MachineLearning.DecisionTrees;
using MainCapStone.yelpAPI;
using MvvmHelpers;
using System;
using System.Collections.Generic;
using System.Linq;

namespace MainCapStone.Models
{
    public static class RestaurantRecommender
    {
        public static Business RecommendRestaurant(ObservableRangeCollection<Business> restaurants,
                                        double userLatitude, double userLongitude, double minRating)
        {
            // Create a random forest learning algorithm
            var teacher = new RandomForestLearning()
            {
                NumberOfTrees = 100,
                SampleRatio = 0.5,
                CoverageRatio = 0.5,
                Join = 10
            };

            // Convert the restaurant data into a matrix
            double[][] inputs = restaurants.Select(r => new double[] { r.coordinates.latitude, r.coordinates.latitude }).ToArray();
            int[] outputs = restaurants.Select(r => r.rating >= minRating ? 1 : 0).ToArray();

            // Train the random forest on the restaurant data
            RandomForest randomForest = teacher.Learn(inputs, outputs);

            // Predict the rating of a new restaurant based on the user's location
            int predictedOutput = randomForest.Decide(new double[] { userLatitude, userLongitude });

            // Select a restaurant with a rating close to the predicted rating
            double predictedRating = predictedOutput == 1 ? 4 : 2.5;
            Business recommendedRestaurant = restaurants.Where(r => r.rating >= predictedRating - 0.5)
                                                 .OrderByDescending(r => r.review_count)
                                                 .ThenByDescending(r => r.rating)
                                                 .ThenBy(r => Guid.NewGuid())
                                                 .FirstOrDefault();

            if (recommendedRestaurant == null)
            {

                List<Business> minRatedRestaurants = restaurants.Where(r => r.rating >= minRating).ToList();

                recommendedRestaurant = minRatedRestaurants.Count != 0 ? minRatedRestaurants[new Random().Next(0, minRatedRestaurants.Count - 1)]
                                                                            : restaurants[new Random().Next(0, restaurants.Count - 1)];
            }
            return recommendedRestaurant;
        }


    }
}
