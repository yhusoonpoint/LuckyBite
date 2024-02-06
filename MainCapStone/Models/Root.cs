﻿using MvvmHelpers;

namespace MainCapStone.yelpAPI
{
    public class Business
    {
        public string id { get; set; }
        public string alias { get; set; }
        public string name { get; set; }
        public string image_url { get; set; }
        public bool is_closed { get; set; }
        public string url { get; set; }
        public int review_count { get; set; }
        public ObservableRangeCollection<Category> categories { get; set; }
        public double rating { get; set; }
        public Coordinates coordinates { get; set; }
        public ObservableRangeCollection<object> transactions { get; set; }
        public Location location { get; set; }
        public string phone { get; set; }
        public string display_phone { get; set; }
        public double distance { get; set; }
        public string price { get; set; }
    }

    public class Category
    {
        public string alias { get; set; }
        public string title { get; set; }
    }

    public class Center
    {
        public double longitude { get; set; }
        public double latitude { get; set; }
    }

    public class Coordinates
    {
        public double latitude { get; set; }
        public double longitude { get; set; }
    }

    public class Location
    {
        public string address1 { get; set; }
        public string address2 { get; set; }
        public string address3 { get; set; }
        public string city { get; set; }
        public string zip_code { get; set; }
        public string country { get; set; }
        public string state { get; set; }
        public ObservableRangeCollection<string> display_address { get; set; }
    }

    public class Region
    {
        public Center center { get; set; }
    }

    public class Root
    {
        public ObservableRangeCollection<Business> businesses { get; set; }
        public int total { get; set; }
        public Region region { get; set; }
    }

}
