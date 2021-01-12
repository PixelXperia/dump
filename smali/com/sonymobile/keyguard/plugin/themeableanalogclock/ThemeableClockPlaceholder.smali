.class public Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableClockPlaceholder;
.super Landroid/widget/ImageView;
.source "ThemeableClockPlaceholder.java"

# interfaces
.implements Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public dozeTimeTick()V
    .locals 0

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 54
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 57
    invoke-virtual {p0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 58
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 59
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 60
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    sget v2, Lcom/android/systemui/R$id;->keyguard_status_view:I

    if-eq v1, v2, :cond_1

    .line 61
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    sget v2, Lcom/android/systemui/R$id;->somc_keyguard_clock_picker_view:I

    if-ne v1, v2, :cond_0

    .line 62
    sget v0, Lcom/android/systemui/R$id;->somc_themeable_analog_clock:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 46
    invoke-super {p0}, Landroid/widget/ImageView;->onFinishInflate()V

    return-void
.end method

.method public setDoze()V
    .locals 2

    .line 97
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 99
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setNextAlarmText(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public startClockTicking()V
    .locals 0

    return-void
.end method

.method public stopClockTicking()V
    .locals 0

    return-void
.end method
