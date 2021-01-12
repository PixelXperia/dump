.class public Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;
.super Lcom/sonymobile/keyguard/plugin/analogclock/ClockPart;
.source "StandardClockHand.java"


# instance fields
.field private final mCenterSizeResourceId:I

.field private mLength:F

.field private final mLengthId:I

.field private mOffsetRadius:F

.field private final mThicknessId:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 47
    invoke-direct {p0, p4}, Lcom/sonymobile/keyguard/plugin/analogclock/ClockPart;-><init>(I)V

    .line 49
    iput p1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;->mCenterSizeResourceId:I

    .line 50
    iput p2, p0, Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;->mLengthId:I

    .line 51
    iput p3, p0, Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;->mThicknessId:I

    .line 53
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/analogclock/ClockPart;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    .line 54
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 55
    sget-object p1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/4 p1, 0x1

    .line 56
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private drawLine(Landroid/graphics/Canvas;FFFFFF)V
    .locals 6

    .line 91
    iget v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;->mOffsetRadius:F

    iget v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;->mLength:F

    add-float/2addr v0, v1

    mul-float/2addr p2, v0

    add-float/2addr p6, p2

    float-to-int p2, p6

    mul-float/2addr v0, p3

    add-float/2addr p7, v0

    float-to-int p3, p7

    int-to-float v3, p2

    int-to-float v4, p3

    .line 94
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/analogclock/ClockPart;->getPaint()Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p1

    move v1, p4

    move v2, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public final applyAttributes(Landroid/content/res/TypedArray;)V
    .locals 3

    .line 61
    iget v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;->mLengthId:I

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;->mLength:F

    .line 63
    iget v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;->mCenterSizeResourceId:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;->mOffsetRadius:F

    .line 64
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/analogclock/ClockPart;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 65
    iget v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;->mThicknessId:I

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 66
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/analogclock/ClockPart;->getColorResourceId()I

    move-result p0

    const v1, -0xff0001

    invoke-virtual {p1, p0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;FF)V
    .locals 10

    .line 81
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/analogclock/ClockPart;->getRotation()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v4, v0

    .line 82
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/analogclock/ClockPart;->getRotation()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    neg-float v5, v0

    .line 83
    iget v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;->mOffsetRadius:F

    mul-float v1, v0, v4

    float-to-int v1, v1

    int-to-float v1, v1

    add-float v6, p2, v1

    mul-float/2addr v0, v5

    float-to-int v0, v0

    int-to-float v0, v0

    add-float v7, p3, v0

    move-object v2, p0

    move-object v3, p1

    move v8, p2

    move v9, p3

    .line 86
    invoke-direct/range {v2 .. v9}, Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;->drawLine(Landroid/graphics/Canvas;FFFFFF)V

    return-void
.end method

.method public final getLength()F
    .locals 0

    .line 103
    iget p0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;->mLength:F

    return p0
.end method

.method public updateClockColor(I)V
    .locals 0

    .line 70
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/analogclock/ClockPart;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
