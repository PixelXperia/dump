.class public Lcom/android/systemui/recents/views/FixedSizeImageView;
.super Lcom/android/systemui/statusbar/AlphaOptimizedImageView;
.source "FixedSizeImageView.java"


# instance fields
.field private mAllowInvalidate:Z

.field private mAllowRelayout:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/views/FixedSizeImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recents/views/FixedSizeImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/views/FixedSizeImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x1

    .line 32
    iput-boolean p1, p0, Lcom/android/systemui/recents/views/FixedSizeImageView;->mAllowRelayout:Z

    .line 33
    iput-boolean p1, p0, Lcom/android/systemui/recents/views/FixedSizeImageView;->mAllowInvalidate:Z

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    .line 60
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/FixedSizeImageView;->mAllowInvalidate:Z

    if-eqz v0, :cond_0

    .line 61
    invoke-super {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 53
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/FixedSizeImageView;->mAllowRelayout:Z

    if-eqz v0, :cond_0

    .line 54
    invoke-super {p0}, Landroid/widget/ImageView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 67
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 68
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz p1, :cond_1

    if-eqz v0, :cond_2

    .line 70
    :cond_1
    iput-boolean v2, p0, Lcom/android/systemui/recents/views/FixedSizeImageView;->mAllowRelayout:Z

    .line 71
    iput-boolean v2, p0, Lcom/android/systemui/recents/views/FixedSizeImageView;->mAllowInvalidate:Z

    .line 73
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    iput-boolean v1, p0, Lcom/android/systemui/recents/views/FixedSizeImageView;->mAllowRelayout:Z

    .line 75
    iput-boolean v1, p0, Lcom/android/systemui/recents/views/FixedSizeImageView;->mAllowInvalidate:Z

    return-void
.end method
