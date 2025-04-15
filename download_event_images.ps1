$imageUrls = @{
    "pet-meetup-park.jpg" = "https://images.unsplash.com/photo-1601758228041-f3b2795255f1"  # Dog park meetup
    "pet-show-competition.jpg" = "https://images.unsplash.com/photo-1535930749574-1399327ce78f"  # Dog show
    "adoption-fair.jpg" = "https://images.unsplash.com/photo-1548199973-03cce0bbc87b"  # Cute puppies
}

foreach ($image in $imageUrls.GetEnumerator()) {
    $outputPath = Join-Path "images" $image.Key
    Write-Host "Downloading $($image.Key)..."
    Invoke-WebRequest -Uri $image.Value -OutFile $outputPath
    Write-Host "Downloaded to $outputPath"
}
