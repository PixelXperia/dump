.class public Lcom/android/systemui/recents/views/FixedSizeFrameLayout;
.super Landroid/widget/FrameLayout;
.source "FixedSizeFrameLayout.java"


# instance fields
.field private final mLayoutBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 32
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/views/FixedSizeFrameLayout;->mLayoutBounds:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/views/FixedSizeFrameLayout;->mLayoutBounds:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/views/FixedSizeFrameLayout;->mLayoutBounds:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 32
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/views/FixedSizeFrameLayout;->mLayoutBounds:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method protected layoutContents(Landroid/graphics/Rect;Z)V
    .locals 6

    .line 90
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    move v1, p2

    invoke-super/range {v0 .. v5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 92
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    .line 93
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p2

    .line 94
    invoke-virtual {p0, p1, p2, p1, p2}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    return-void
.end method

.method protected measureContents(II)V
    .locals 1

    const/high16 v0, -0x80000000

    .line 82
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 83
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 82
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method protected final onLayout(ZIIII)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/android/systemui/recents/views/FixedSizeFrameLayout;->mLayoutBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 60
    iget-object p2, p0, Lcom/android/systemui/recents/views/FixedSizeFrameLayout;->mLayoutBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/recents/views/FixedSizeFrameLayout;->layoutContents(Landroid/graphics/Rect;Z)V

    return-void
.end method

.method protected final onMeasure(II)V
    .locals 0

    .line 53
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 54
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/views/FixedSizeFrameLayout;->measureContents(II)V

    return-void
.end method

.method public final requestLayout()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/android/systemui/recents/views/FixedSizeFrameLayout;->mLayoutBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/views/FixedSizeFrameLayout;->measureContents(II)V

    .line 74
    iget-object v0, p0, Lcom/android/systemui/recents/views/FixedSizeFrameLayout;->mLayoutBounds:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/views/FixedSizeFrameLayout;->layoutContents(Landroid/graphics/Rect;Z)V

    goto :goto_1

    .line 68
    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :goto_1
    return-void
.end method
