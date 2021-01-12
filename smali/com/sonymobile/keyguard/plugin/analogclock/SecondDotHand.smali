.class public Lcom/sonymobile/keyguard/plugin/analogclock/SecondDotHand;
.super Lcom/sonymobile/keyguard/plugin/analogclock/ClockPart;
.source "SecondDotHand.java"


# instance fields
.field private final mBounds:Landroid/graphics/RectF;

.field private mDiameter:F

.field private final mDiameterResourceId:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 34
    invoke-direct {p0, p2}, Lcom/sonymobile/keyguard/plugin/analogclock/ClockPart;-><init>(I)V

    .line 25
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/sonymobile/keyguard/plugin/analogclock/SecondDotHand;->mBounds:Landroid/graphics/RectF;

    .line 36
    iput p1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/SecondDotHand;->mDiameterResourceId:I

    return-void
.end method


# virtual methods
.method public final applyAttributes(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 41
    iget v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/SecondDotHand;->mDiameterResourceId:I

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/SecondDotHand;->mDiameter:F

    .line 42
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/analogclock/ClockPart;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/analogclock/ClockPart;->getColorResourceId()I

    move-result p0

    const v1, -0xff0100

    invoke-virtual {p1, p0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public final calculateSecondsDotPosition(FFFF)V
    .locals 7

    .line 56
    iget v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/SecondDotHand;->mDiameter:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-double v1, p3

    float-to-double p2, p2

    float-to-double v3, p1

    .line 57
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v5, p2

    add-double/2addr v1, v5

    double-to-float p1, v1

    float-to-double v1, p4

    .line 58
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double/2addr p2, v3

    sub-double/2addr v1, p2

    double-to-float p2, v1

    .line 59
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/SecondDotHand;->mBounds:Landroid/graphics/RectF;

    sub-float p3, p1, v0

    sub-float p4, p2, v0

    add-float/2addr p1, v0

    add-float/2addr p2, v0

    invoke-virtual {p0, p3, p4, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/SecondDotHand;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/analogclock/ClockPart;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final getBounds(Landroid/graphics/Rect;)V
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/SecondDotHand;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {p0, p1}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    return-void
.end method

.method public updateClockColor(I)V
    .locals 0

    .line 81
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/analogclock/ClockPart;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
