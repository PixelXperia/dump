.class public Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;
.super Lcom/android/systemui/recents/views/TaskViewThumbnail;
.source "GridTaskViewThumbnail.java"


# instance fields
.field private final mRestBackgroundOutline:Landroid/graphics/Path;

.field private final mThumbnailOutline:Landroid/graphics/Path;

.field private mUpdateThumbnailOutline:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/recents/views/TaskViewThumbnail;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 29
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailOutline:Landroid/graphics/Path;

    .line 30
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    const/4 p1, 0x1

    .line 33
    iput-boolean p1, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mUpdateThumbnailOutline:Z

    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070411

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    return-void
.end method

.method private createThumbnailPath(IIIILandroid/graphics/Path;)V
    .locals 9

    .line 146
    invoke-virtual {p5}, Landroid/graphics/Path;->reset()V

    int-to-float v8, p1

    int-to-float p2, p2

    .line 147
    invoke-virtual {p5, v8, p2}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v3, p3

    .line 148
    invoke-virtual {p5, v3, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 149
    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    sub-int v0, p4, v0

    int-to-float v0, v0

    invoke-virtual {p5, v3, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 150
    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    mul-int/lit8 v1, v0, 0x2

    sub-int/2addr p3, v1

    int-to-float v1, p3

    mul-int/lit8 v0, v0, 0x2

    sub-int p3, p4, v0

    int-to-float v2, p3

    int-to-float p3, p4

    const/4 v5, 0x0

    const/high16 v6, 0x42b40000    # 90.0f

    const/4 v7, 0x0

    move-object v0, p5

    move v4, p3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 152
    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    add-int/2addr v0, p1

    int-to-float v0, v0

    invoke-virtual {p5, v0, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 153
    iget p0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    mul-int/lit8 v0, p0, 0x2

    sub-int/2addr p4, v0

    int-to-float v2, p4

    mul-int/lit8 p0, p0, 0x2

    add-int/2addr p1, p0

    int-to-float v3, p1

    const/high16 v5, 0x42b40000    # 90.0f

    move-object v0, p5

    move v1, v8

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 155
    invoke-virtual {p5, v8, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 156
    invoke-virtual {p5}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private updateThumbnailOutline()V
    .locals 24

    move-object/from16 v6, p0

    .line 72
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070410

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 74
    iget-object v1, v6, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 75
    iget-object v1, v6, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int v8, v1, v0

    .line 76
    iget-object v0, v6, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    .line 77
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, v6, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 76
    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 78
    iget-object v0, v6, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    .line 79
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget v1, v6, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 78
    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 81
    iget-object v0, v6, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_1

    if-lez v9, :cond_1

    if-lez v10, :cond_1

    add-int/lit8 v11, v9, 0x0

    add-int/lit8 v12, v10, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 104
    iget-object v5, v6, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailOutline:Landroid/graphics/Path;

    move-object/from16 v0, p0

    move v3, v11

    move v4, v12

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->createThumbnailPath(IIIILandroid/graphics/Path;)V

    const/4 v0, 0x0

    if-ge v9, v7, :cond_0

    .line 107
    iget v2, v6, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    sub-int v2, v11, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 111
    iget-object v3, v6, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 112
    iget-object v3, v6, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    int-to-float v2, v2

    invoke-virtual {v3, v2, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 113
    iget-object v3, v6, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    int-to-float v4, v11

    invoke-virtual {v3, v4, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 114
    iget-object v3, v6, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    iget v5, v6, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    sub-int v5, v12, v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 115
    iget-object v13, v6, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    iget v3, v6, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    mul-int/lit8 v5, v3, 0x2

    sub-int v5, v11, v5

    int-to-float v14, v5

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v12, v3

    int-to-float v15, v3

    int-to-float v3, v12

    const/16 v18, 0x0

    const/high16 v19, 0x42b40000    # 90.0f

    const/16 v20, 0x0

    move/from16 v16, v4

    move/from16 v17, v3

    invoke-virtual/range {v13 .. v20}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 117
    iget-object v4, v6, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 118
    iget-object v3, v6, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    invoke-virtual {v3, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 119
    iget-object v2, v6, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    :cond_0
    if-ge v10, v8, :cond_2

    .line 125
    iget v2, v6, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    sub-int/2addr v10, v2

    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 127
    iget-object v3, v6, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 128
    iget-object v3, v6, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    int-to-float v2, v2

    invoke-virtual {v3, v0, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 129
    iget-object v3, v6, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    int-to-float v4, v11

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 130
    iget-object v3, v6, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    iget v5, v6, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    sub-int v5, v12, v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 131
    iget-object v13, v6, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    iget v3, v6, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    mul-int/lit8 v5, v3, 0x2

    sub-int/2addr v11, v5

    int-to-float v14, v11

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v12, v3

    int-to-float v15, v3

    int-to-float v3, v12

    const/16 v18, 0x0

    const/high16 v19, 0x42b40000    # 90.0f

    const/16 v20, 0x0

    move/from16 v16, v4

    move/from16 v17, v3

    invoke-virtual/range {v13 .. v20}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 133
    iget-object v4, v6, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    iget v5, v6, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    add-int/2addr v5, v1

    int-to-float v5, v5

    invoke-virtual {v4, v5, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 134
    iget-object v4, v6, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    const/16 v17, 0x0

    iget v5, v6, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    mul-int/lit8 v7, v5, 0x2

    sub-int/2addr v12, v7

    int-to-float v7, v12

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v1

    int-to-float v1, v5

    const/high16 v21, 0x42b40000    # 90.0f

    const/high16 v22, 0x42b40000    # 90.0f

    const/16 v23, 0x0

    move-object/from16 v16, v4

    move/from16 v18, v7

    move/from16 v19, v1

    move/from16 v20, v3

    invoke-virtual/range {v16 .. v23}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 136
    iget-object v1, v6, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 137
    iget-object v0, v6, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 140
    iget-object v5, v6, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailOutline:Landroid/graphics/Path;

    move-object/from16 v0, p0

    move v3, v7

    move v4, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->createThumbnailPath(IIIILandroid/graphics/Path;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 161
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070410

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 163
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 164
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v2, v0

    .line 165
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    .line 166
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    .line 165
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 167
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    .line 168
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 167
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 170
    iget-boolean v4, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mUpdateThumbnailOutline:Z

    if-eqz v4, :cond_0

    .line 171
    invoke-direct {p0}, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->updateThumbnailOutline()V

    const/4 v4, 0x0

    .line 172
    iput-boolean v4, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mUpdateThumbnailOutline:Z

    .line 175
    :cond_0
    iget-boolean v4, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mUserLocked:Z

    if-eqz v4, :cond_1

    .line 176
    iget-object v0, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailOutline:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mLockedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 177
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v4, :cond_4

    if-lez v0, :cond_4

    if-lez v3, :cond_4

    if-ge v0, v1, :cond_2

    .line 181
    iget-object v0, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_2
    if-ge v3, v2, :cond_3

    .line 185
    iget-object v0, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 187
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailOutline:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->getDrawPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 189
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailOutline:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public onTaskViewSizeChanged(II)V
    .locals 1

    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mUpdateThumbnailOutline:Z

    .line 60
    invoke-super {p0, p1, p2}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->onTaskViewSizeChanged(II)V

    return-void
.end method

.method public updateThumbnailMatrix()V
    .locals 1

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mUpdateThumbnailOutline:Z

    .line 68
    invoke-super {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->updateThumbnailMatrix()V

    return-void
.end method
