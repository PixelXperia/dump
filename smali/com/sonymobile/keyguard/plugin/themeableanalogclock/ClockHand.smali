.class public Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ClockHand;
.super Landroid/view/ViewGroup;
.source "ClockHand.java"


# instance fields
.field private mHandType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ClockHand;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, -0x1

    .line 45
    iput p3, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ClockHand;->mHandType:I

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ClockHand;->applyAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private applyAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/R$styleable;->ClockHand:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 83
    :try_start_0
    sget p2, Lcom/android/systemui/R$styleable;->ClockHand_handType:I

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ClockHand;->mHandType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method

.method private centerChildAroundPivot(IILandroid/view/View;I)V
    .locals 4

    .line 139
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 140
    invoke-virtual {p3, p0, p0}, Landroid/view/View;->measure(II)V

    .line 142
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    .line 143
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 144
    invoke-virtual {p3}, Landroid/view/View;->getPivotX()F

    move-result v1

    float-to-int v1, v1

    .line 145
    invoke-virtual {p3}, Landroid/view/View;->getPivotY()F

    move-result v2

    float-to-int v2, v2

    .line 146
    instance-of v3, p3, Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    .line 151
    :cond_1
    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p1, v1

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p2, v2

    sub-int v1, p2, p4

    add-int/2addr p0, p1

    add-int/2addr p2, v0

    sub-int/2addr p2, p4

    invoke-virtual {p3, p1, v1, p0, p2}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private padImageView(Landroid/view/View;)V
    .locals 0

    .line 130
    instance-of p0, p1, Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    .line 131
    check-cast p1, Landroid/widget/ImageView;

    const/4 p0, 0x1

    .line 132
    invoke-virtual {p1, p0, p0, p0, p0}, Landroid/widget/ImageView;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method private updateThemeResourcesToChild(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;FFLjava/lang/String;)V
    .locals 0

    .line 170
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 171
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 172
    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setPivotY(F)V

    .line 173
    invoke-virtual {p1, p5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final getHandType()I
    .locals 0

    .line 95
    iget p0, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ClockHand;->mHandType:I

    return p0
.end method

.method protected final onFinishInflate()V
    .locals 3

    .line 115
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 117
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ClockHand;->padImageView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 120
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    return-void
.end method

.method protected final onLayout(ZIIII)V
    .locals 3

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 103
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    if-ge p3, p1, :cond_1

    .line 105
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 107
    invoke-direct {p0, p4, p5, v0, p2}, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ClockHand;->centerChildAroundPivot(IILandroid/view/View;I)V

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateThemeResources(Landroid/graphics/drawable/Drawable;FFLjava/lang/String;)V
    .locals 10

    .line 158
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 160
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 161
    instance-of v3, v2, Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 162
    move-object v5, v2

    check-cast v5, Landroid/widget/ImageView;

    move-object v4, p0

    move-object v6, p1

    move v7, p2

    move v8, p3

    move-object v9, p4

    invoke-direct/range {v4 .. v9}, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ClockHand;->updateThemeResourcesToChild(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;FFLjava/lang/String;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
