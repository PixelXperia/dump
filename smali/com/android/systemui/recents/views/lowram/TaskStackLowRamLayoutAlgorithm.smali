.class public Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;
.super Ljava/lang/Object;
.source "TaskStackLowRamLayoutAlgorithm.java"


# instance fields
.field private mFlingThreshold:I

.field private mPadding:I

.field private mPaddingEndTopBottom:I

.field private mPaddingLeftRight:I

.field private mSystemInsets:Landroid/graphics/Rect;

.field private mTaskRect:Landroid/graphics/Rect;

.field private mTopOffset:I

.field private mWindowRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->reloadOnConfigurationChange(Landroid/content/Context;)V

    return-void
.end method

.method private fillStackTransform(Lcom/android/systemui/recents/views/TaskViewTransform;IIZ)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 251
    iput v0, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    .line 252
    iput v0, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    int-to-float p3, p3

    .line 253
    iput p3, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    const/4 p3, 0x0

    .line 254
    iput p3, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    .line 255
    iput v0, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    .line 256
    iget-object p3, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->getTaskRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 257
    iget-object p3, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget v0, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mPaddingLeftRight:I

    iget-object p0, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p0

    int-to-float p0, v0

    int-to-float p2, p2

    invoke-virtual {p3, p0, p2}, Landroid/graphics/RectF;->offset(FF)V

    .line 258
    iget-object p0, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget p2, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    invoke-static {p0, p2}, Lcom/android/systemui/recents/utilities/Utilities;->scaleRectAboutCenter(Landroid/graphics/RectF;F)V

    .line 259
    iput-boolean p4, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    return-void
.end method

.method private getTaskTopFromIndex(I)I
    .locals 0

    .line 242
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->getTotalHeightOfTasks(I)I

    move-result p1

    iget p0, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mTopOffset:I

    sub-int/2addr p1, p0

    return p1
.end method

.method private getTotalHeightOfTasks(I)I
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    mul-int/2addr v0, p1

    add-int/lit8 p1, p1, 0x1

    iget p0, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mPadding:I

    mul-int/2addr p1, p0

    add-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method public computeStackVisibilityReport(Ljava/util/ArrayList;)Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;)",
            "Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;"
        }
    .end annotation

    .line 85
    invoke-static {}, Lcom/android/systemui/recents/LegacyRecentsImpl;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object p0

    .line 87
    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromPipApp:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithNextPipApp:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x2

    .line 90
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 91
    new-instance p1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;

    invoke-direct {p1, p0, p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;-><init>(II)V

    return-object p1
.end method

.method public getBackOfStackTransform(Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;)V
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mWindowRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 111
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskViewTransform;->reset()V

    return-void

    .line 116
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    .line 117
    iget-object v1, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 118
    iget-object v1, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mPadding:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 119
    iget p2, p2, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxTranslationZ:I

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->fillStackTransform(Lcom/android/systemui/recents/views/TaskViewTransform;IIZ)V

    return-void
.end method

.method public getClosestTaskP(FII)F
    .locals 6

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->percentageToScroll(F)I

    move-result p1

    const/4 v0, 0x0

    .line 153
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->getTaskTopFromIndex(I)I

    move-result v1

    iget v2, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mPaddingEndTopBottom:I

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    move v3, v1

    move v1, v2

    :goto_0
    if-ge v1, p2, :cond_5

    .line 155
    invoke-direct {p0, v1}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->getTaskTopFromIndex(I)I

    move-result v4

    iget v5, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mPaddingEndTopBottom:I

    sub-int/2addr v4, v5

    sub-int v5, v4, p1

    if-lez v5, :cond_4

    sub-int/2addr p1, v3

    .line 158
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-le v5, p1, :cond_0

    move p1, v2

    goto :goto_1

    :cond_0
    move p1, v0

    .line 160
    :goto_1
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget v1, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mFlingThreshold:I

    if-le p2, v1, :cond_2

    if-lez p3, :cond_1

    move p1, v2

    goto :goto_2

    :cond_1
    move p1, v0

    :cond_2
    :goto_2
    if-eqz p1, :cond_3

    .line 164
    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->scrollToPercentage(I)F

    move-result p0

    goto :goto_3

    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->scrollToPercentage(I)F

    move-result p0

    :goto_3
    return p0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    move v3, v4

    goto :goto_0

    .line 168
    :cond_5
    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->scrollToPercentage(I)F

    move-result p0

    return p0
.end method

.method public getFrontOfStackTransform(Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;)V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mWindowRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 97
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskViewTransform;->reset()V

    return-void

    .line 102
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    .line 103
    iget-object v1, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 104
    iget-object v1, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mPadding:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 105
    iget p2, p2, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxTranslationZ:I

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->fillStackTransform(Lcom/android/systemui/recents/views/TaskViewTransform;IIZ)V

    return-void
.end method

.method public getInitialScrollP(IZ)F
    .locals 0

    if-eqz p2, :cond_0

    .line 216
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->getMaxScrollP(I)F

    move-result p0

    return p0

    :cond_0
    const/4 p2, 0x2

    if-ge p1, p2, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    sub-int/2addr p1, p2

    .line 221
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->getScrollPForTask(I)F

    move-result p0

    return p0
.end method

.method public getMaxOverscroll()F
    .locals 0

    const p0, 0x3f2aaaaa

    return p0
.end method

.method public getMaxScrollP(I)F
    .locals 0

    add-int/lit8 p1, p1, -0x1

    .line 205
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->getScrollPForTask(I)F

    move-result p0

    return p0
.end method

.method public getMinScrollP()F
    .locals 1

    const/4 v0, 0x0

    .line 195
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->getScrollPForTask(I)F

    move-result p0

    return p0
.end method

.method public getScrollPForTask(I)F
    .locals 1

    .line 230
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->getTaskTopFromIndex(I)I

    move-result p1

    iget v0, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mPaddingEndTopBottom:I

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->scrollToPercentage(I)F

    move-result p0

    return p0
.end method

.method public getTaskRect()Landroid/graphics/Rect;
    .locals 0

    .line 234
    iget-object p0, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getTransform(IFLcom/android/systemui/recents/views/TaskViewTransform;ILcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;)Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 1

    if-nez p4, :cond_0

    .line 125
    invoke-virtual {p3}, Lcom/android/systemui/recents/views/TaskViewTransform;->reset()V

    return-object p3

    :cond_0
    const/4 v0, 0x1

    if-le p4, v0, :cond_2

    .line 131
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->getTaskTopFromIndex(I)I

    move-result p1

    invoke-virtual {p0, p2}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->percentageToScroll(F)I

    move-result p2

    sub-int/2addr p1, p2

    .line 134
    iget p2, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mPadding:I

    add-int/2addr p2, p1

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->getTaskRect()Landroid/graphics/Rect;

    move-result-object p4

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    add-int/2addr p2, p4

    if-lez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    move v0, p2

    goto :goto_0

    .line 136
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget-object p4, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, p4

    .line 137
    iget-object p4, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    sub-int/2addr p1, p4

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p2}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->percentageToScroll(F)I

    move-result p2

    sub-int/2addr p1, p2

    .line 139
    :goto_0
    iget p2, p5, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxTranslationZ:I

    invoke-direct {p0, p3, p1, p2, v0}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->fillStackTransform(Lcom/android/systemui/recents/views/TaskViewTransform;IIZ)V

    return-object p3
.end method

.method public initialize(Landroid/graphics/Rect;)V
    .locals 5

    .line 65
    iput-object p1, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mWindowRect:Landroid/graphics/Rect;

    .line 66
    iget-object p1, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    if-lez p1, :cond_2

    .line 67
    iget-object p1, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v0

    .line 68
    iget-object v0, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v2

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    .line 69
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mPadding:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    if-le v0, p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 71
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    if-eqz v3, :cond_1

    mul-int/lit8 v3, v1, 0x2

    div-int/lit8 v3, v3, 0x3

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v4, v2, v2, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 72
    iget-object v1, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mPaddingLeftRight:I

    .line 73
    iget-object v0, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int v0, p1, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mPaddingEndTopBottom:I

    const/16 v0, 0x9

    .line 76
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->getTotalHeightOfTasks(I)I

    move-result v0

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mTopOffset:I

    :cond_2
    return-void
.end method

.method public percentageToScroll(F)I
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget p0, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mPadding:I

    add-int/2addr v0, p0

    int-to-float p0, v0

    mul-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public reloadOnConfigurationChange(Landroid/content/Context;)V
    .locals 2

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07041b

    .line 60
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mPadding:I

    .line 61
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mFlingThreshold:I

    return-void
.end method

.method public scrollToPercentage(I)F
    .locals 1

    int-to-float p1, p1

    .line 177
    iget-object v0, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget p0, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mPadding:I

    add-int/2addr v0, p0

    int-to-float p0, v0

    div-float/2addr p1, p0

    return p1
.end method

.method public setSystemInsets(Landroid/graphics/Rect;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    return-void
.end method
