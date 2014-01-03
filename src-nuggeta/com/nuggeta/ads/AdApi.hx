package com.nuggeta.ads;
import com.nuggeta.ads.BannerAd;
import com.nuggeta.ads.AdContext;
import com.nuggeta.ads.InterstitialAd;

interface AdApi
{

	function displayBannerAd( adContext:AdContext):BannerAd;

	function displayInterstitialAd():InterstitialAd;
}
