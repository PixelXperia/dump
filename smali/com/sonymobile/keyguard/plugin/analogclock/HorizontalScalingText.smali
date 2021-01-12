.class public Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;
.super Ljava/lang/Object;
.source "HorizontalScalingText.java"


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field private final mPaint:Landroid/graphics/Paint;

.field private mSize:F

.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/Paint;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->mBounds:Landroid/graphics/Rect;

    const/high16 v0, 0x42c80000    # 100.0f

    .line 36
    iput v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->mSize:F

    const-string v0, ""

    .line 46
    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->mText:Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public static createTextPaint()Landroid/graphics/Paint;
    .locals 3

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 57
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v1, 0x1

    .line 58
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setSubpixelText(Z)V

    .line 59
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 60
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-object v0
.end method


# virtual methods
.method public final drawText(Landroid/graphics/Canvas;FFLandroid/graphics/Typeface;)V
    .locals 1

    if-eqz p4, :cond_0

    .line 93
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 95
    :cond_0
    iget-object p4, p0, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->mPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->mSize:F

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 96
    iget-object p4, p0, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->mText:Ljava/lang/String;

    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, p2, p3, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final getBottom()I
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->mBounds:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    return p0
.end method

.method public final getBoundsReadOnly()Landroid/graphics/Rect;
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->mBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public final getHeight()I
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    return p0
.end method

.method public final getLeft()I
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->mBounds:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    return p0
.end method

.method public final getText()Ljava/lang/String;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->mText:Ljava/lang/String;

    return-object p0
.end method

.method public final getTop()I
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->mBounds:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    return p0
.end method

.method public final getWidth()I
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    return p0
.end method

.method public final measureTextBounds()V
    .locals 4

    .line 77
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 78
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->mSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 79
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->mText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->mBounds:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, p0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->mText:Ljava/lang/String;

    return-void
.end method

.method public final setTextSize(F)V
    .locals 0

    .line 70
    iput p1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->mSize:F

    return-void
.end method
