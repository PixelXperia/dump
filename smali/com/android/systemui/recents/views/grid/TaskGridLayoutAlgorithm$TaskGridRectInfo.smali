.class Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;
.super Ljava/lang/Object;
.source "TaskGridLayoutAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TaskGridRectInfo"
.end annotation


# instance fields
.field lines:I

.field size:Landroid/graphics/Rect;

.field tasksPerLine:I

.field final synthetic this$0:Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;

.field xOffsets:[I

.field yOffsets:[I


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;I)V
    .locals 12

    .line 75
    iput-object p1, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->this$0:Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->size:Landroid/graphics/Rect;

    .line 77
    new-array v0, p2, [I

    iput-object v0, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->xOffsets:[I

    .line 78
    new-array v0, p2, [I

    iput-object v0, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->yOffsets:[I

    const/16 v0, 0x8

    .line 80
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 81
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->getTasksPerLine(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->tasksPerLine:I

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ge v0, v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    .line 82
    :goto_0
    iput v4, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->lines:I

    .line 85
    invoke-static {p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->access$000(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-static {p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->access$000(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    const/4 v6, 0x0

    if-le v4, v5, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v6

    .line 86
    :goto_1
    invoke-static {p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->access$100(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)F

    move-result v5

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v7

    if-lez v5, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v6

    :goto_2
    const/4 v7, 0x7

    if-nez v4, :cond_7

    if-eqz v5, :cond_7

    if-ge v0, v2, :cond_3

    move v8, v3

    goto :goto_3

    :cond_3
    move v8, v2

    .line 89
    :goto_3
    iput v8, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->tasksPerLine:I

    const/4 v8, 0x3

    if-ge v0, v8, :cond_4

    move v1, v3

    goto :goto_4

    :cond_4
    const/4 v9, 0x5

    if-ge v0, v9, :cond_5

    move v1, v2

    goto :goto_4

    :cond_5
    if-ge v0, v7, :cond_6

    move v1, v8

    .line 92
    :cond_6
    :goto_4
    iput v1, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->lines:I

    :cond_7
    if-eqz v4, :cond_a

    if-nez v5, :cond_a

    if-ge v0, v7, :cond_8

    move v1, v0

    goto :goto_5

    :cond_8
    const/4 v1, 0x6

    .line 96
    :goto_5
    iput v1, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->tasksPerLine:I

    if-ge v0, v7, :cond_9

    move v0, v3

    goto :goto_6

    :cond_9
    move v0, v2

    .line 97
    :goto_6
    iput v0, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->lines:I

    .line 101
    :cond_a
    invoke-static {p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->access$000(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-static {p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->access$200(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)I

    move-result v1

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->tasksPerLine:I

    sub-int/2addr v1, v3

    .line 102
    invoke-static {p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->access$300(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)I

    move-result v4

    mul-int/2addr v1, v4

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->tasksPerLine:I

    div-int/2addr v0, v1

    .line 103
    invoke-static {p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->access$000(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->access$400(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)I

    move-result v4

    mul-int/2addr v4, v2

    sub-int/2addr v1, v4

    iget v4, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->lines:I

    sub-int/2addr v4, v3

    .line 104
    invoke-static {p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->access$300(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)I

    move-result v5

    mul-int/2addr v4, v5

    sub-int/2addr v1, v4

    iget v4, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->lines:I

    div-int/2addr v1, v4

    int-to-float v4, v1

    int-to-float v5, v0

    .line 106
    invoke-static {p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->access$100(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)F

    move-result v7

    div-float v7, v5, v7

    invoke-static {p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->access$500(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    cmpl-float v4, v4, v7

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    if-ltz v4, :cond_b

    .line 110
    invoke-static {p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->access$100(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)F

    move-result v1

    div-float/2addr v5, v1

    invoke-static {p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->access$500(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v5, v1

    float-to-double v4, v5

    add-double/2addr v4, v7

    double-to-int v1, v4

    goto :goto_7

    .line 115
    :cond_b
    invoke-static {p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->access$500(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)I

    move-result v0

    sub-int v0, v1, v0

    int-to-float v0, v0

    invoke-static {p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->access$100(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)F

    move-result v4

    mul-float/2addr v0, v4

    float-to-double v4, v0

    add-double/2addr v4, v7

    double-to-int v0, v4

    .line 117
    :goto_7
    iget-object v4, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->size:Landroid/graphics/Rect;

    invoke-virtual {v4, v6, v6, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 119
    invoke-static {p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->access$000(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-static {p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->access$200(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)I

    move-result v5

    mul-int/2addr v5, v2

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->tasksPerLine:I

    mul-int v7, v5, v0

    sub-int/2addr v4, v7

    sub-int/2addr v5, v3

    .line 120
    invoke-static {p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->access$300(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)I

    move-result v7

    mul-int/2addr v5, v7

    sub-int/2addr v4, v5

    .line 121
    invoke-static {p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->access$000(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->access$400(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)I

    move-result v7

    mul-int/2addr v7, v2

    sub-int/2addr v5, v7

    iget v7, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->lines:I

    mul-int v8, v7, v1

    sub-int/2addr v5, v8

    sub-int/2addr v7, v3

    .line 122
    invoke-static {p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->access$300(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)I

    move-result v8

    mul-int/2addr v7, v8

    sub-int/2addr v5, v7

    :goto_8
    if-ge v6, p2, :cond_c

    sub-int v7, p2, v6

    sub-int/2addr v7, v3

    .line 127
    iget v8, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->tasksPerLine:I

    rem-int v9, v7, v8

    .line 128
    div-int/2addr v7, v8

    .line 129
    iget-object v8, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->xOffsets:[I

    invoke-static {p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->access$000(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->left:I

    div-int/lit8 v11, v4, 0x2

    add-int/2addr v10, v11

    .line 130
    invoke-static {p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->access$200(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)I

    move-result v11

    add-int/2addr v10, v11

    invoke-static {p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->access$300(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)I

    move-result v11

    add-int/2addr v11, v0

    mul-int/2addr v11, v9

    add-int/2addr v10, v11

    aput v10, v8, v6

    .line 131
    iget-object v8, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->yOffsets:[I

    invoke-static {p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->access$000(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->top:I

    div-int/lit8 v10, v5, 0x2

    add-int/2addr v9, v10

    .line 132
    invoke-static {p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->access$400(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->access$300(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)I

    move-result v10

    add-int/2addr v10, v1

    mul-int/2addr v10, v7

    add-int/2addr v9, v10

    aput v9, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_c
    return-void
.end method

.method private getTasksPerLine(I)I
    .locals 2

    packed-switch p1, :pswitch_data_0

    .line 153
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported task count "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const/4 p0, 0x4

    return p0

    :pswitch_1
    const/4 p0, 0x3

    return p0

    :pswitch_2
    const/4 p0, 0x2

    return p0

    :pswitch_3
    const/4 p0, 0x1

    return p0

    :pswitch_4
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
