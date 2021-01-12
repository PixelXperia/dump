.class public Lcom/sonymobile/keyguard/clock/picker/ClockItem;
.super Landroid/widget/LinearLayout;
.source "ClockItem.java"


# instance fields
.field private mClock:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/keyguard/clock/picker/ClockItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getBackPlateSize()I
    .locals 1

    .line 106
    sget v0, Lcom/android/systemui/R$id;->somc_keyguard_clock_back_plate:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 108
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 109
    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    return p0
.end method

.method private initThemeColors(Landroid/widget/FrameLayout;Landroid/widget/TextView;)V
    .locals 2

    .line 113
    const-class p0, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;

    .line 114
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;

    invoke-virtual {p0}, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 116
    sget v0, Lcom/android/systemui/R$color;->somc_keyguard_theme_color_clock_picker_back_plate:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 118
    sget p1, Lcom/android/systemui/R$color;->somc_keyguard_theme_color_primary_text:I

    invoke-virtual {p0, p1, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method private initView(Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;)V
    .locals 3

    .line 72
    sget v0, Lcom/android/systemui/R$id;->somc_keyguard_clock_back_plate:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 73
    sget v1, Lcom/android/systemui/R$id;->somc_keyguard_clock_name:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 74
    iget-object v2, p0, Lcom/sonymobile/keyguard/clock/picker/ClockItem;->mClock:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;

    invoke-virtual {p1, v2}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->createClockView(Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 77
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 78
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 79
    iget-object p1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockItem;->mClock:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;

    invoke-virtual {p1}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    invoke-direct {p0, v0, v1}, Lcom/sonymobile/keyguard/clock/picker/ClockItem;->initThemeColors(Landroid/widget/FrameLayout;Landroid/widget/TextView;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getClock()Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockItem;->mClock:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;

    return-object p0
.end method

.method public final getPageWidthInPixels()I
    .locals 2

    .line 97
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 98
    invoke-direct {p0}, Lcom/sonymobile/keyguard/clock/picker/ClockItem;->getBackPlateSize()I

    move-result p0

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p0, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p0, v0

    return p0
.end method

.method public final initWithClock(Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockItem;->mClock:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;

    .line 68
    invoke-direct {p0, p2}, Lcom/sonymobile/keyguard/clock/picker/ClockItem;->initView(Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;)V

    return-void
.end method
