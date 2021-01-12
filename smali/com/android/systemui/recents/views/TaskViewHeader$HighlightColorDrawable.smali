.class Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "TaskViewHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/views/TaskViewHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HighlightColorDrawable"
.end annotation


# instance fields
.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mColor:I

.field private mDimAlpha:F

.field private mHighlightPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/android/systemui/recents/views/TaskViewHeader;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/views/TaskViewHeader;)V
    .locals 2

    .line 87
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->this$0:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 82
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->mHighlightPaint:Landroid/graphics/Paint;

    .line 83
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 88
    iget-object p1, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->mBackgroundPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    const/16 v1, 0xff

    invoke-static {v1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    iget-object p1, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->mBackgroundPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 90
    iget-object p1, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->mHighlightPaint:Landroid/graphics/Paint;

    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    iget-object p0, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->mHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 126
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->this$0:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->this$0:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget v1, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHighlightHeight:I

    iget v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mCornerRadius:I

    .line 127
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-float v5, v0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->this$0:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mCornerRadius:I

    int-to-float v6, v0

    int-to-float v7, v0

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->mHighlightPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    .line 126
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 131
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->this$0:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget v1, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHighlightHeight:I

    int-to-float v4, v1

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v5, v0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->this$0:Lcom/android/systemui/recents/views/TaskViewHeader;

    .line 132
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->this$0:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget v1, v1, Lcom/android/systemui/recents/views/TaskViewHeader;->mCornerRadius:I

    add-int/2addr v0, v1

    int-to-float v6, v0

    int-to-float v7, v1

    int-to-float v8, v1

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object v2, p1

    .line 131
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getColor()I
    .locals 0

    .line 142
    iget p0, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->mColor:I

    return p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorAndDim(IF)V
    .locals 4

    .line 95
    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->mColor:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->mDimAlpha:F

    invoke-static {v0, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    :cond_0
    iput p1, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->mColor:I

    .line 97
    iput p2, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->mDimAlpha:F

    .line 98
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->this$0:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-static {v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->access$000(Lcom/android/systemui/recents/views/TaskViewHeader;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->this$0:Lcom/android/systemui/recents/views/TaskViewHeader;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->getSecondaryColor(IZ)I

    move-result p1

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->this$0:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-static {v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->access$100(Lcom/android/systemui/recents/views/TaskViewHeader;)[F

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/core/graphics/ColorUtils;->colorToHSL(I[F)V

    .line 105
    iget-object p1, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->this$0:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-static {p1}, Lcom/android/systemui/recents/views/TaskViewHeader;->access$100(Lcom/android/systemui/recents/views/TaskViewHeader;)[F

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->this$0:Lcom/android/systemui/recents/views/TaskViewHeader;

    .line 106
    invoke-static {v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->access$100(Lcom/android/systemui/recents/views/TaskViewHeader;)[F

    move-result-object v0

    const/4 v1, 0x2

    aget v0, v0, v1

    const v2, 0x3d99999a    # 0.075f

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float p2, v3, p2

    mul-float/2addr p2, v2

    add-float/2addr v0, p2

    .line 105
    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    aput p2, p1, v1

    .line 107
    iget-object p1, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->mHighlightPaint:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->this$0:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-static {p2}, Lcom/android/systemui/recents/views/TaskViewHeader;->access$100(Lcom/android/systemui/recents/views/TaskViewHeader;)[F

    move-result-object p2

    invoke-static {p2}, Landroidx/core/graphics/ColorUtils;->HSLToColor([F)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_2
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
