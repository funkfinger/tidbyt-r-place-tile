load("render.star", "render")
load("http.star", "http")
load("random.star", "random")


WIDTH=64
HEIGHT=32

def main():
    x = random.number(0, 2000 - WIDTH)
    y = random.number(0, 2000 - HEIGHT)
    images = []
    for i in range(1, 100 + 1):
        sizeString = str(x) + "x" + str(y) + ":" + str(x + WIDTH) + "x" + str(y + HEIGHT)
        images += [render.Image(http.get("https://d1h1b7rtlg6ubw.cloudfront.net/" + sizeString + "/r-place2022-final-clean.png").body())]
        x = x + 1
        y = y + 1

    return render.Root(
        render.Animation(images)
        # render.Image(img)
    )
