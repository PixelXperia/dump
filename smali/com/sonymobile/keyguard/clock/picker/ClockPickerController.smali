.class public Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;
.super Ljava/lang/Object;
.source "ClockPickerController.java"


# instance fields
.field private mClockPicker:Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;

.field private final mClockPluginUserSelectionHandler:Lcom/sonymobile/keyguard/plugininfrastructure/ClockPluginUserSelectionHandler;

.field private mClockPlugins:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDefaultKeyguardFactoryProvider:Lcom/sonymobile/keyguard/plugininfrastructure/DefaultKeyguardFactoryProvider;

.field private mDismissView:Landroid/view/View;

.field private final mKeyguardPluginFactoryLoader:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;

.field private final mKeyguardPluginMetaDataLoader:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;Lcom/sonymobile/keyguard/plugininfrastructure/DefaultKeyguardFactoryProvider;Lcom/sonymobile/keyguard/plugininfrastructure/ClockPluginUserSelectionHandler;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mContext:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mKeyguardPluginMetaDataLoader:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;

    .line 80
    iput-object p3, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mKeyguardPluginFactoryLoader:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;

    .line 81
    iput-object p4, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mDefaultKeyguardFactoryProvider:Lcom/sonymobile/keyguard/plugininfrastructure/DefaultKeyguardFactoryProvider;

    .line 82
    iput-object p5, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mClockPluginUserSelectionHandler:Lcom/sonymobile/keyguard/plugininfrastructure/ClockPluginUserSelectionHandler;

    .line 83
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mClockPlugins:Ljava/util/LinkedList;

    return-void
.end method

.method static synthetic access$000(Landroid/view/View;)V
    .locals 0

    .line 44
    invoke-static {p0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->removeViewFromItsParent(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;)Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mClockPicker:Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;Landroid/view/ViewGroup;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->hideClockPicker(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;Landroid/view/ViewGroup;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->showCurrentClock(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;Landroid/view/ViewGroup;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->animateInNewClock(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->exchangeClockViewForPickerView(Landroid/view/View;Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;)Landroid/view/View;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mDismissView:Landroid/view/View;

    return-object p0
.end method

.method private animateInNewClock(Landroid/view/ViewGroup;)V
    .locals 2

    .line 220
    sget v0, Lcom/android/systemui/R$id;->status_view_container:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 222
    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$anim;->somc_keyguard_clock_picker_show_current_clock:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 224
    new-instance v1, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$3;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$3;-><init>(Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 240
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private animateOutClockPicker(Landroid/view/ViewGroup;)V
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$anim;->somc_keyguard_clock_picker_hide_picker:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 188
    new-instance v1, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$2;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$2;-><init>(Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 211
    iget-object p0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mClockPicker:Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private createClickDismissingView(Landroid/view/View;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 106
    check-cast v0, Landroid/widget/FrameLayout;

    .line 107
    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mDismissView:Landroid/view/View;

    .line 108
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/2addr v2, p1

    sub-int/2addr v1, v2

    .line 110
    iget-object p1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mDismissView:Landroid/view/View;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/16 v4, 0x50

    invoke-direct {v2, v3, v1, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    iget-object p1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mDismissView:Landroid/view/View;

    new-instance v1, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$1;-><init>(Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object p0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mDismissView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private createClockPickerView(Landroid/view/ViewGroup;)V
    .locals 3

    .line 271
    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->somc_keyguard_clock_pager:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;

    iput-object p1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mClockPicker:Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;

    .line 273
    iget-object p1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mClockPicker:Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;

    invoke-virtual {p1, p0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->setController(Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;)V

    .line 274
    iget-object p1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mClockPicker:Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;

    invoke-virtual {p1}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->initPages()V

    .line 275
    invoke-direct {p0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->startAllClocks()V

    .line 276
    iget-object p1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mClockPicker:Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;

    invoke-direct {p0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->getCurrentClockFactoryClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->positionPicker(Ljava/lang/String;)V

    return-void
.end method

.method private displayClockPickerView(Landroid/view/ViewGroup;)V
    .locals 0

    .line 260
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->createClockPickerView(Landroid/view/ViewGroup;)V

    .line 261
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->hideCurrentClock(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private exchangeClockViewForPickerView(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 1

    const/16 v0, 0x8

    .line 357
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 358
    iget-object p1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mClockPicker:Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 359
    invoke-direct {p0, p2}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->createClickDismissingView(Landroid/view/View;)V

    .line 361
    iget-object p1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$anim;->somc_keyguard_clock_picker_show_picker:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 363
    new-instance v0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$5;

    invoke-direct {v0, p0, p2}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$5;-><init>(Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;Landroid/view/ViewGroup;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 395
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private getCurrentClockFactoryClassName()Ljava/lang/String;
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mClockPluginUserSelectionHandler:Lcom/sonymobile/keyguard/plugininfrastructure/ClockPluginUserSelectionHandler;

    invoke-interface {v0}, Lcom/sonymobile/keyguard/plugininfrastructure/ClockPluginUserSelectionHandler;->getPresentableUserSelection()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 298
    iget-object p0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mDefaultKeyguardFactoryProvider:Lcom/sonymobile/keyguard/plugininfrastructure/DefaultKeyguardFactoryProvider;

    invoke-interface {p0}, Lcom/sonymobile/keyguard/plugininfrastructure/DefaultKeyguardFactoryProvider;->getDefaultKeyguardFactoryClassName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private hideClockPicker(Landroid/view/ViewGroup;)V
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mClockPicker:Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 310
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 311
    iput-object p1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mClockPicker:Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;

    .line 313
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mClockPlugins:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method private hideCurrentClock(Landroid/view/ViewGroup;)V
    .locals 3

    .line 322
    sget v0, Lcom/android/systemui/R$id;->status_view_container:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 323
    iget-object v1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$anim;->somc_keyguard_clock_picker_hide_current_clock:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 325
    new-instance v2, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$4;

    invoke-direct {v2, p0, v0, p1}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$4;-><init>(Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;Landroid/view/View;Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 346
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private removeDismissView()V
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mDismissView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 249
    invoke-static {v0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->removeViewFromItsParent(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 250
    iput-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mDismissView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method private static removeViewFromItsParent(Landroid/view/View;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 513
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 514
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 515
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private restoreGUI(Z)V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mClockPicker:Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 170
    invoke-direct {p0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->removeDismissView()V

    if-nez p1, :cond_0

    .line 172
    invoke-direct {p0, v0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->hideClockPicker(Landroid/view/ViewGroup;)V

    .line 173
    invoke-direct {p0, v0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->showCurrentClock(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 175
    :cond_0
    invoke-direct {p0, v0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->animateOutClockPicker(Landroid/view/ViewGroup;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setClockForUser(Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 286
    iget-object p0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mClockPluginUserSelectionHandler:Lcom/sonymobile/keyguard/plugininfrastructure/ClockPluginUserSelectionHandler;

    invoke-virtual {p1}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->getFullyQualifiedClassName()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginConstants$ClockSelectionSource;->LockscreenClockPicker:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginConstants$ClockSelectionSource;

    invoke-interface {p0, p1, v0}, Lcom/sonymobile/keyguard/plugininfrastructure/ClockPluginUserSelectionHandler;->updateUserSelection(Ljava/lang/String;Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginConstants$ClockSelectionSource;)V

    :cond_0
    return-void
.end method

.method private setVisibilityOnClockContainer(Landroid/view/ViewGroup;I)V
    .locals 0

    .line 423
    sget p0, Lcom/android/systemui/R$id;->status_view_container:I

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 425
    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private showCurrentClock(Landroid/view/ViewGroup;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 406
    invoke-direct {p0, p1, v0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->setVisibilityOnClockContainer(Landroid/view/ViewGroup;I)V

    .line 407
    instance-of p0, p1, Lcom/android/keyguard/KeyguardStatusView;

    if-eqz p0, :cond_0

    .line 410
    check-cast p1, Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardStatusView;->loadClockPluginView()V

    :cond_0
    return-void
.end method

.method private sortClockList(Ljava/util/LinkedList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;",
            ">;)V"
        }
    .end annotation

    .line 454
    new-instance v0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$6;

    invoke-direct {v0, p0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$6;-><init>(Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private startAllClocks()V
    .locals 1

    .line 492
    iget-object p0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mClockPlugins:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;

    .line 493
    invoke-interface {v0}, Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;->startClockTicking()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private stopAllClocks()V
    .locals 1

    .line 501
    iget-object p0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mClockPlugins:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;

    .line 502
    invoke-interface {v0}, Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;->stopClockTicking()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final createClockView(Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;)Landroid/view/View;
    .locals 2

    .line 476
    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mKeyguardPluginFactoryLoader:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;

    .line 477
    invoke-virtual {v0, p1}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->createComponentFactoryFromFactoryEntry(Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;)Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 479
    iget-object v1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1, v0}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;->createKeyguardClockPreviewView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object p1

    .line 480
    instance-of v0, p1, Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;

    if-eqz v0, :cond_0

    .line 481
    iget-object p0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mClockPlugins:Ljava/util/LinkedList;

    move-object v0, p1

    check-cast v0, Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p1

    :cond_1
    return-object v0
.end method

.method public final exitClockPicker(Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;Z)V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mClockPicker:Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->clearSelectionTimeout()V

    .line 158
    invoke-direct {p0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->stopAllClocks()V

    .line 159
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->setClockForUser(Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;)V

    .line 160
    invoke-direct {p0, p2}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->restoreGUI(Z)V

    :cond_0
    return-void
.end method

.method public final loadClockPlugins()Ljava/util/LinkedList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 437
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mKeyguardPluginMetaDataLoader:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;

    invoke-virtual {v1}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;->getAvailableKeyguardFactories()Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 439
    invoke-direct {p0, v0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->sortClockList(Ljava/util/LinkedList;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "ClockPickerController"

    .line 442
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    .line 444
    :cond_1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    :goto_1
    return-object v0
.end method

.method public final resizeDismissView(Landroid/view/View;)V
    .locals 3

    .line 135
    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mDismissView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mDismissView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 137
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    .line 138
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/2addr v1, p1

    sub-int/2addr v0, v1

    .line 139
    iget-object p0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mDismissView:Landroid/view/View;

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/16 v2, 0x50

    invoke-direct {p1, v1, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public final startClockPicker(Landroid/view/ViewGroup;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 93
    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mClockPicker:Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;

    if-nez v0, :cond_0

    .line 94
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->displayClockPickerView(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method
