.class public Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;
.super Landroid/widget/HorizontalScrollView;
.source "ClockPickerView.java"

# interfaces
.implements Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$SelectionTimeOut;,
        Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$Motion;
    }
.end annotation


# instance fields
.field private final mClockItemOnClickListener:Landroid/view/View$OnClickListener;

.field private mClockPickerViewContent:Lcom/sonymobile/keyguard/clock/picker/ClockPickerViewContent;

.field private mClocksContainer:Landroid/view/ViewGroup;

.field private mController:Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

.field private final mDismissPickerListener:Landroid/view/View$OnClickListener;

.field private mHandler:Landroid/os/Handler;

.field private mPageSnapHandled:Z

.field private mPageWidthPixels:I

.field private mScaleContainer:Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;

.field private final mSelectionTimeOut:Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$SelectionTimeOut;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, v0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 47
    iput p1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mPageWidthPixels:I

    const/4 p1, 0x0

    .line 49
    iput-boolean p1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mPageSnapHandled:Z

    .line 53
    new-instance p1, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$1;

    invoke-direct {p1, p0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$1;-><init>(Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;)V

    iput-object p1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mClockItemOnClickListener:Landroid/view/View$OnClickListener;

    .line 60
    new-instance p1, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$2;

    invoke-direct {p1, p0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$2;-><init>(Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;)V

    iput-object p1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mDismissPickerListener:Landroid/view/View$OnClickListener;

    .line 95
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mHandler:Landroid/os/Handler;

    .line 96
    new-instance p1, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$SelectionTimeOut;

    invoke-direct {p1, p0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$SelectionTimeOut;-><init>(Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;)V

    iput-object p1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mSelectionTimeOut:Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$SelectionTimeOut;

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;)Landroid/view/ViewGroup;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mClocksContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->selectPage(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;)Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mController:Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

    return-object p0
.end method

.method private addClock(Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;Landroid/view/ViewGroup;)V
    .locals 3

    .line 295
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->somc_keyguard_clock_container_clock_item:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 299
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v2

    .line 298
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/sonymobile/keyguard/clock/picker/ClockItem;

    .line 300
    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mController:Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

    invoke-virtual {p2, p1, v0}, Lcom/sonymobile/keyguard/clock/picker/ClockItem;->initWithClock(Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;)V

    .line 301
    iget-object p0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mClockItemOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private calculatePageWidth()I
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mScaleContainer:Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 240
    iget-object p0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mScaleContainer:Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 241
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 242
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/keyguard/clock/picker/ClockItem;

    .line 243
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/keyguard/clock/picker/ClockItem;->getPageWidthInPixels()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p0

    :goto_0
    move v1, p0

    :cond_1
    return v1
.end method

.method private createSelectionTimeOut(I)V
    .locals 2

    .line 385
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->clearSelectionTimeout()V

    .line 386
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 393
    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mClocksContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v1

    sub-int p1, v0, p1

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mSelectionTimeOut:Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$SelectionTimeOut;

    invoke-virtual {v0, p1}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$SelectionTimeOut;->setForSelectedPageIndex(I)V

    .line 397
    iget-object p1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mSelectionTimeOut:Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$SelectionTimeOut;

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private createViews(Ljava/util/LinkedList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;",
            ">;)V"
        }
    .end annotation

    .line 218
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;

    .line 219
    iget-object v1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mClocksContainer:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->addClock(Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;Landroid/view/ViewGroup;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private ensureSamePageIsCenteredAfterScaling(F)V
    .locals 2

    .line 257
    iget v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mPageWidthPixels:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 258
    invoke-direct {p0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->getPageWidthInPixels()I

    move-result v0

    .line 259
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 260
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/2addr p1, v0

    .line 264
    iput p1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    .line 267
    invoke-direct {p0, v0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->createSelectionTimeOut(I)V

    return-void
.end method

.method private ensureTouchEndsOnAPage(Landroid/view/MotionEvent;)V
    .locals 1

    .line 132
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    iget-boolean p1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mPageSnapHandled:Z

    if-nez p1, :cond_1

    .line 136
    sget-object p1, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$Motion;->DRAG:Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$Motion;

    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->snapToPage(Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$Motion;)V

    :cond_1
    const/4 p1, 0x0

    .line 138
    iput-boolean p1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mPageSnapHandled:Z

    :goto_0
    return-void
.end method

.method private getPageWidthInPixels()I
    .locals 1

    .line 209
    iget v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mPageWidthPixels:I

    int-to-float v0, v0

    iget-object p0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mScaleContainer:Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScaleY()F

    move-result p0

    mul-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method private isViewDepictingClock(Landroid/view/View;Ljava/lang/String;)Z
    .locals 0

    .line 340
    instance-of p0, p1, Lcom/sonymobile/keyguard/clock/picker/ClockItem;

    if-eqz p0, :cond_0

    .line 341
    check-cast p1, Lcom/sonymobile/keyguard/clock/picker/ClockItem;

    .line 342
    invoke-virtual {p1}, Lcom/sonymobile/keyguard/clock/picker/ClockItem;->getClock()Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->getFullyQualifiedClassName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 343
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private selectPage(I)V
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mClocksContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 373
    instance-of v0, p1, Lcom/sonymobile/keyguard/clock/picker/ClockItem;

    if-eqz v0, :cond_0

    .line 374
    check-cast p1, Lcom/sonymobile/keyguard/clock/picker/ClockItem;

    .line 375
    iget-object p0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mController:Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

    invoke-virtual {p1}, Lcom/sonymobile/keyguard/clock/picker/ClockItem;->getClock()Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->exitClockPicker(Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;Z)V

    :cond_0
    return-void
.end method

.method private snapToPage(Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$Motion;)V
    .locals 2

    .line 356
    invoke-direct {p0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->getPageWidthInPixels()I

    move-result v0

    .line 358
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p1, v1, v0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$Motion;->getModifiedScrollPosition(II)I

    move-result p1

    int-to-float p1, p1

    int-to-float v1, v0

    div-float/2addr p1, v1

    .line 359
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/2addr v0, p1

    .line 361
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    .line 362
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->createSelectionTimeOut(I)V

    return-void
.end method

.method private updateContentPadding(F)V
    .locals 2

    .line 278
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 280
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 281
    iget v1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mPageWidthPixels:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    sub-float/2addr v0, v1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v0, p1

    .line 282
    iget-object p0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mClockPickerViewContent:Lcom/sonymobile/keyguard/clock/picker/ClockPickerViewContent;

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 283
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v1, 0x0

    .line 282
    invoke-virtual {p0, p1, v1, v0, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final clearSelectionTimeout()V
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mSelectionTimeOut:Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$SelectionTimeOut;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final createSelectionTimeoutForSelectedPage()V
    .locals 2

    .line 328
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->getPageWidthInPixels()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 329
    invoke-direct {p0, v0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->createSelectionTimeOut(I)V

    return-void
.end method

.method public final enableScaleContainerScaling()V
    .locals 1

    .line 174
    iget-object p0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mScaleContainer:Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->setAnimateScaling(Z)V

    return-void
.end method

.method public final fling(I)V
    .locals 1

    if-lez p1, :cond_0

    .line 121
    sget-object p1, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$Motion;->FLING_LEFT:Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$Motion;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$Motion;->FLING_RIGHT:Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$Motion;

    :goto_0
    const/4 v0, 0x1

    .line 122
    iput-boolean v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mPageSnapHandled:Z

    .line 123
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->snapToPage(Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$Motion;)V

    return-void
.end method

.method public final initPages()V
    .locals 2

    .line 151
    sget v0, Lcom/android/systemui/R$id;->somc_keyguard_clockplugin_picker_scale_container:I

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;

    iput-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mScaleContainer:Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;

    .line 153
    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mScaleContainer:Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->setPivotXViewStart(Z)V

    .line 154
    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mScaleContainer:Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;

    invoke-virtual {v0, p0}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->setSomcKeyguardClockScaleContainerCallback(Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainerCallback;)V

    .line 155
    sget v0, Lcom/android/systemui/R$id;->somc_keyguard_clock_picker_content:I

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerViewContent;

    iput-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mClockPickerViewContent:Lcom/sonymobile/keyguard/clock/picker/ClockPickerViewContent;

    .line 157
    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mClockPickerViewContent:Lcom/sonymobile/keyguard/clock/picker/ClockPickerViewContent;

    iget-object v1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mDismissPickerListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    sget v0, Lcom/android/systemui/R$id;->somc_keyguard_clock_picker_scaled_clocks:I

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mClocksContainer:Landroid/view/ViewGroup;

    .line 161
    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mController:Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

    invoke-virtual {v0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->loadClockPlugins()Ljava/util/LinkedList;

    move-result-object v0

    .line 162
    invoke-direct {p0, v0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->createViews(Ljava/util/LinkedList;)V

    .line 163
    invoke-direct {p0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->calculatePageWidth()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mPageWidthPixels:I

    .line 167
    iget-object p0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mScaleContainer:Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->setAnimateScaling(Z)V

    return-void
.end method

.method protected final onAttachedToWindow()V
    .locals 1

    .line 227
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 228
    invoke-direct {p0, v0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->updateContentPadding(F)V

    .line 229
    invoke-direct {p0, v0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->ensureSamePageIsCenteredAfterScaling(F)V

    return-void
.end method

.method public final onScalingCancelled(F)V
    .locals 0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 200
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->updateContentPadding(F)V

    .line 201
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    return-void
.end method

.method public final onScalingFinished(F)V
    .locals 0

    .line 182
    iget-object p1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mController:Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->resizeDismissView(Landroid/view/View;)V

    return-void
.end method

.method public final onScalingStarted(F)V
    .locals 0

    .line 190
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->updateContentPadding(F)V

    .line 191
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->ensureSamePageIsCenteredAfterScaling(F)V

    .line 192
    iget-object p0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mClockPickerViewContent:Lcom/sonymobile/keyguard/clock/picker/ClockPickerViewContent;

    invoke-virtual {p0, p1}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerViewContent;->setScaleLevel(F)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 111
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 112
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->ensureTouchEndsOnAPage(Landroid/view/MotionEvent;)V

    return v0
.end method

.method public final positionPicker(Ljava/lang/String;)V
    .locals 3

    .line 311
    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mClocksContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 313
    iget-object v2, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mClocksContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 314
    invoke-direct {p0, v2, p1}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->isViewDepictingClock(Landroid/view/View;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 318
    invoke-direct {p0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->getPageWidthInPixels()I

    move-result p1

    mul-int/2addr v1, p1

    iput v1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final setController(Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mController:Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

    return-void
.end method
