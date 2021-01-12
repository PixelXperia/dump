.class public abstract Lcom/sonymobile/keyguard/plugin/analogclock/ClockPart;
.super Ljava/lang/Object;
.source "ClockPart.java"


# instance fields
.field private final mColorResourceId:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mRadians:F


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/ClockPart;->mPaint:Landroid/graphics/Paint;

    const/high16 v0, -0x40800000    # -1.0f

    .line 22
    iput v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/ClockPart;->mRadians:F

    .line 30
    iput p1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/ClockPart;->mColorResourceId:I

    return-void
.end method


# virtual methods
.method protected final getColorResourceId()I
    .locals 0

    .line 78
    iget p0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/ClockPart;->mColorResourceId:I

    return p0
.end method

.method public final getPaint()Landroid/graphics/Paint;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/ClockPart;->mPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public final getRotation()F
    .locals 0

    .line 69
    iget p0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/ClockPart;->mRadians:F

    return p0
.end method

.method public final setRotation(F)Z
    .locals 1

    .line 58
    iget v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/ClockPart;->mRadians:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 59
    :goto_0
    iput p1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/ClockPart;->mRadians:F

    return v0
.end method
