.class public Lcom/android/systemui/recents/utilities/AnimationProps;
.super Ljava/lang/Object;
.source "AnimationProps.java"


# static fields
.field public static final IMMEDIATE:Lcom/android/systemui/recents/utilities/AnimationProps;

.field private static final LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private mListener:Landroid/animation/Animator$AnimatorListener;

.field private mPropDuration:Landroid/util/SparseLongArray;

.field private mPropInterpolators:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/animation/Interpolator;",
            ">;"
        }
    .end annotation
.end field

.field private mPropStartDelay:Landroid/util/SparseLongArray;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 39
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/utilities/AnimationProps;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 40
    new-instance v0, Lcom/android/systemui/recents/utilities/AnimationProps;

    sget-object v1, Lcom/android/systemui/recents/utilities/AnimationProps;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/recents/utilities/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;)V

    sput-object v0, Lcom/android/systemui/recents/utilities/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/utilities/AnimationProps;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IILandroid/view/animation/Interpolator;)V
    .locals 1

    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/utilities/AnimationProps;-><init>(IILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public constructor <init>(IILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 96
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/recents/utilities/AnimationProps;->setStartDelay(II)Lcom/android/systemui/recents/utilities/AnimationProps;

    .line 97
    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/recents/utilities/AnimationProps;->setDuration(II)Lcom/android/systemui/recents/utilities/AnimationProps;

    .line 98
    invoke-virtual {p0, v0, p3}, Lcom/android/systemui/recents/utilities/AnimationProps;->setInterpolator(ILandroid/view/animation/Interpolator;)Lcom/android/systemui/recents/utilities/AnimationProps;

    .line 99
    invoke-virtual {p0, p4}, Lcom/android/systemui/recents/utilities/AnimationProps;->setListener(Landroid/animation/Animator$AnimatorListener;)Lcom/android/systemui/recents/utilities/AnimationProps;

    return-void
.end method

.method public constructor <init>(ILandroid/view/animation/Interpolator;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/systemui/recents/utilities/AnimationProps;-><init>(IILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public constructor <init>(ILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/systemui/recents/utilities/AnimationProps;-><init>(IILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method


# virtual methods
.method public apply(ILandroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/animation/ValueAnimator;",
            ">(ITT;)TT;"
        }
    .end annotation

    .line 120
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/utilities/AnimationProps;->getStartDelay(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/utilities/AnimationProps;->getDuration(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 122
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/utilities/AnimationProps;->getInterpolator(I)Landroid/view/animation/Interpolator;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p2
.end method

.method public createAnimator(Ljava/util/List;)Landroid/animation/AnimatorSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)",
            "Landroid/animation/AnimatorSet;"
        }
    .end annotation

    .line 107
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 108
    iget-object p0, p0, Lcom/android/systemui/recents/utilities/AnimationProps;->mListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz p0, :cond_0

    .line 109
    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 111
    :cond_0
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getDuration(I)J
    .locals 7

    .line 166
    iget-object v0, p0, Lcom/android/systemui/recents/utilities/AnimationProps;->mPropDuration:Landroid/util/SparseLongArray;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    const-wide/16 v3, -0x1

    .line 167
    invoke-virtual {v0, p1, v3, v4}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v5

    cmp-long p1, v5, v3

    if-eqz p1, :cond_0

    return-wide v5

    .line 171
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/recents/utilities/AnimationProps;->mPropDuration:Landroid/util/SparseLongArray;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v1, v2}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide p0

    return-wide p0

    :cond_1
    return-wide v1
.end method

.method public getInterpolator(I)Landroid/view/animation/Interpolator;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/android/systemui/recents/utilities/AnimationProps;->mPropInterpolators:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    .line 193
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/animation/Interpolator;

    if-eqz p1, :cond_0

    return-object p1

    .line 197
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/recents/utilities/AnimationProps;->mPropInterpolators:Landroid/util/SparseArray;

    const/4 p1, 0x0

    sget-object v0, Lcom/android/systemui/recents/utilities/AnimationProps;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/animation/Interpolator;

    return-object p0

    .line 199
    :cond_1
    sget-object p0, Lcom/android/systemui/recents/utilities/AnimationProps;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public getListener()Landroid/animation/Animator$AnimatorListener;
    .locals 0

    .line 214
    iget-object p0, p0, Lcom/android/systemui/recents/utilities/AnimationProps;->mListener:Landroid/animation/Animator$AnimatorListener;

    return-object p0
.end method

.method public getStartDelay(I)J
    .locals 7

    .line 141
    iget-object v0, p0, Lcom/android/systemui/recents/utilities/AnimationProps;->mPropStartDelay:Landroid/util/SparseLongArray;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    const-wide/16 v3, -0x1

    .line 142
    invoke-virtual {v0, p1, v3, v4}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v5

    cmp-long p1, v5, v3

    if-eqz p1, :cond_0

    return-wide v5

    .line 146
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/recents/utilities/AnimationProps;->mPropStartDelay:Landroid/util/SparseLongArray;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v1, v2}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide p0

    return-wide p0

    :cond_1
    return-wide v1
.end method

.method public isImmediate()Z
    .locals 7

    .line 221
    iget-object v0, p0, Lcom/android/systemui/recents/utilities/AnimationProps;->mPropDuration:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Landroid/util/SparseLongArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 223
    iget-object v3, p0, Lcom/android/systemui/recents/utilities/AnimationProps;->mPropDuration:Landroid/util/SparseLongArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public setDuration(II)Lcom/android/systemui/recents/utilities/AnimationProps;
    .locals 3

    .line 155
    iget-object v0, p0, Lcom/android/systemui/recents/utilities/AnimationProps;->mPropDuration:Landroid/util/SparseLongArray;

    if-nez v0, :cond_0

    .line 156
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/utilities/AnimationProps;->mPropDuration:Landroid/util/SparseLongArray;

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/utilities/AnimationProps;->mPropDuration:Landroid/util/SparseLongArray;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/util/SparseLongArray;->append(IJ)V

    return-object p0
.end method

.method public setInterpolator(ILandroid/view/animation/Interpolator;)Lcom/android/systemui/recents/utilities/AnimationProps;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/android/systemui/recents/utilities/AnimationProps;->mPropInterpolators:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 181
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/utilities/AnimationProps;->mPropInterpolators:Landroid/util/SparseArray;

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/utilities/AnimationProps;->mPropInterpolators:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-object p0
.end method

.method public setListener(Landroid/animation/Animator$AnimatorListener;)Lcom/android/systemui/recents/utilities/AnimationProps;
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/android/systemui/recents/utilities/AnimationProps;->mListener:Landroid/animation/Animator$AnimatorListener;

    return-object p0
.end method

.method public setStartDelay(II)Lcom/android/systemui/recents/utilities/AnimationProps;
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/android/systemui/recents/utilities/AnimationProps;->mPropStartDelay:Landroid/util/SparseLongArray;

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/utilities/AnimationProps;->mPropStartDelay:Landroid/util/SparseLongArray;

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/utilities/AnimationProps;->mPropStartDelay:Landroid/util/SparseLongArray;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/util/SparseLongArray;->append(IJ)V

    return-object p0
.end method
