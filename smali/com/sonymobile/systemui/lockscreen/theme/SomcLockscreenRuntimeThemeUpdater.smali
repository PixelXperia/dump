.class public Lcom/sonymobile/systemui/lockscreen/theme/SomcLockscreenRuntimeThemeUpdater;
.super Ljava/lang/Object;
.source "SomcLockscreenRuntimeThemeUpdater.java"


# direct methods
.method public static newThemeConfiguration(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/KeyguardIndicationController;Landroid/content/res/Resources;)V
    .locals 0

    .line 44
    invoke-static {p0, p2}, Lcom/sonymobile/systemui/lockscreen/theme/SomcLockscreenRuntimeThemeUpdater;->updateOwnerInfoTextColor(Landroid/view/ViewGroup;Landroid/content/res/Resources;)V

    .line 45
    invoke-static {p0, p1, p2}, Lcom/sonymobile/systemui/lockscreen/theme/SomcLockscreenRuntimeThemeUpdater;->updateKeyguardBottomAreaResources(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/KeyguardIndicationController;Landroid/content/res/Resources;)V

    .line 46
    invoke-static {p0, p2}, Lcom/sonymobile/systemui/lockscreen/theme/SomcLockscreenRuntimeThemeUpdater;->updateKeyguardBouncerResources(Landroid/view/ViewGroup;Landroid/content/res/Resources;)V

    .line 47
    invoke-static {p0, p2}, Lcom/sonymobile/systemui/lockscreen/theme/SomcLockscreenRuntimeThemeUpdater;->updateKeyguardStatusResources(Landroid/view/ViewGroup;Landroid/content/res/Resources;)V

    .line 48
    invoke-static {p0, p2}, Lcom/sonymobile/systemui/lockscreen/theme/SomcLockscreenRuntimeThemeUpdater;->updateKeyguardBarIconsResources(Landroid/view/ViewGroup;Landroid/content/res/Resources;)V

    return-void
.end method

.method private static updateKeyguardBarIconsResources(Landroid/view/ViewGroup;Landroid/content/res/Resources;)V
    .locals 1

    .line 91
    sget v0, Lcom/android/systemui/R$id;->keyguard_header:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 92
    instance-of v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    if-eqz v0, :cond_0

    .line 93
    check-cast p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateSkinnedResources(Landroid/content/res/Resources;)V

    :cond_0
    return-void
.end method

.method private static updateKeyguardBottomAreaResources(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/KeyguardIndicationController;Landroid/content/res/Resources;)V
    .locals 1

    .line 62
    sget v0, Lcom/android/systemui/R$id;->keyguard_bottom_area:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 64
    check-cast p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateThemeResources(Landroid/content/res/Resources;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 67
    sget p0, Lcom/android/systemui/R$color;->somc_keyguard_theme_color_solid_foreground:I

    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    .line 69
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateThemeColors(I)V

    :cond_1
    return-void
.end method

.method private static updateKeyguardBouncerResources(Landroid/view/ViewGroup;Landroid/content/res/Resources;)V
    .locals 1

    .line 75
    sget v0, Lcom/android/systemui/R$id;->keyguard_security_container:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 76
    instance-of v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;

    if-eqz v0, :cond_0

    .line 77
    check-cast p0, Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->updateThemeResources(Landroid/content/res/Resources;)V

    :cond_0
    return-void
.end method

.method private static updateKeyguardStatusResources(Landroid/view/ViewGroup;Landroid/content/res/Resources;)V
    .locals 1

    .line 83
    sget v0, Lcom/android/systemui/R$id;->keyguard_status_view:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 84
    instance-of v0, p0, Lcom/android/keyguard/KeyguardStatusView;

    if-eqz v0, :cond_0

    .line 85
    check-cast p0, Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardStatusView;->updateSkinnedResources(Landroid/content/res/Resources;)V

    :cond_0
    return-void
.end method

.method private static updateOwnerInfoTextColor(Landroid/view/ViewGroup;Landroid/content/res/Resources;)V
    .locals 1

    .line 53
    sget v0, Lcom/android/systemui/R$id;->owner_info:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 55
    sget v0, Lcom/android/systemui/R$color;->somc_keyguard_theme_color_solid_foreground:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 56
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method
