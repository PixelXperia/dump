.class public final Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardStatusViewHelper;
.super Ljava/lang/Object;
.source "KeyguardStatusViewHelper.java"


# direct methods
.method private static addClockPluginView(Landroid/widget/LinearLayout;Landroid/view/ViewGroup;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 138
    invoke-virtual {p0, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public static createKeyguardPluginFactoryForUser(ILandroid/content/Context;)Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;
    .locals 5

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 82
    new-instance v1, Lcom/sonymobile/keyguard/plugininfrastructure/RealDefaultKeyguardFactoryProvider;

    new-instance v2, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;

    invoke-direct {v2, p1}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/sonymobile/keyguard/plugininfrastructure/RealCustomizationResourceLoader;

    invoke-direct {v3, p1}, Lcom/sonymobile/keyguard/plugininfrastructure/RealCustomizationResourceLoader;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2, v3}, Lcom/sonymobile/keyguard/plugininfrastructure/RealDefaultKeyguardFactoryProvider;-><init>(Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;Lcom/sonymobile/keyguard/plugininfrastructure/CustomizationResourceLoader;)V

    .line 87
    new-instance v2, Lcom/sonymobile/keyguard/plugininfrastructure/RealClockPluginUserSelectionHandler;

    new-instance v3, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;

    invoke-direct {v3, p1}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/sonymobile/keyguard/plugininfrastructure/RealKeyguardPluginSecureSettingsAbstraction;

    invoke-direct {v4, v0, p0}, Lcom/sonymobile/keyguard/plugininfrastructure/RealKeyguardPluginSecureSettingsAbstraction;-><init>(Landroid/content/ContentResolver;I)V

    invoke-direct {v2, v3, v4, v1}, Lcom/sonymobile/keyguard/plugininfrastructure/RealClockPluginUserSelectionHandler;-><init>(Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginSecureSettingsAbstraction;Lcom/sonymobile/keyguard/plugininfrastructure/DefaultKeyguardFactoryProvider;)V

    .line 93
    new-instance p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;

    invoke-direct {p0, p1, v1, v2}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;-><init>(Landroid/content/Context;Lcom/sonymobile/keyguard/plugininfrastructure/DefaultKeyguardFactoryProvider;Lcom/sonymobile/keyguard/plugininfrastructure/ClockPluginUserSelectionHandler;)V

    return-object p0
.end method

.method public static loadCurrentClock(Landroid/content/Context;Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;Landroid/view/ViewGroup;Landroid/widget/LinearLayout;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0

    .line 39
    invoke-static {p3, p2}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardStatusViewHelper;->removeClockPluginView(Landroid/widget/LinearLayout;Landroid/view/ViewGroup;)V

    .line 40
    invoke-virtual {p1, p3}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->createKeyguardClockView(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object p0

    .line 42
    invoke-static {p0, p3, p4}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardStatusViewHelper;->showCurrentClock(Landroid/view/ViewGroup;Landroid/widget/LinearLayout;Landroid/view/ViewGroup;)V

    return-object p0
.end method

.method private static removeClockPluginView(Landroid/widget/LinearLayout;Landroid/view/ViewGroup;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 123
    invoke-static {p1}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardStatusViewHelper;->stopClockTicking(Landroid/view/ViewGroup;)V

    .line 124
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static setNextAlarm(Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 104
    instance-of v0, p0, Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;

    if-eqz v0, :cond_0

    .line 105
    check-cast p0, Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;

    invoke-interface {p0, p1}, Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;->setNextAlarmText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static setVisibilityOnKeyguardStatusViews(Landroid/view/ViewGroup;I)V
    .locals 0

    if-eqz p0, :cond_0

    .line 131
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private static showCurrentClock(Landroid/view/ViewGroup;Landroid/widget/LinearLayout;Landroid/view/ViewGroup;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 113
    invoke-static {p1, p0}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardStatusViewHelper;->addClockPluginView(Landroid/widget/LinearLayout;Landroid/view/ViewGroup;)V

    const/16 p0, 0x8

    .line 114
    invoke-static {p2, p0}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardStatusViewHelper;->setVisibilityOnKeyguardStatusViews(Landroid/view/ViewGroup;I)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 116
    invoke-static {p2, p0}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardStatusViewHelper;->setVisibilityOnKeyguardStatusViews(Landroid/view/ViewGroup;I)V

    :goto_0
    return-void
.end method

.method public static startClockTicking(Landroid/view/ViewGroup;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 54
    instance-of v0, p0, Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;

    if-eqz v0, :cond_0

    .line 55
    check-cast p0, Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;

    invoke-interface {p0}, Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;->startClockTicking()V

    :cond_0
    return-void
.end method

.method public static stopClockTicking(Landroid/view/ViewGroup;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 65
    instance-of v0, p0, Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;

    if-eqz v0, :cond_0

    .line 66
    check-cast p0, Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;

    invoke-interface {p0}, Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;->stopClockTicking()V

    :cond_0
    return-void
.end method
