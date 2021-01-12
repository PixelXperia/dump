.class public Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;
.super Landroid/widget/LinearLayout;
.source "DigitalClock.java"

# interfaces
.implements Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock$Patterns;
    }
.end annotation


# instance fields
.field private mAlarmStatusView:Landroid/widget/TextView;

.field private mClockView:Landroid/widget/TextClock;

.field private mContext:Landroid/content/Context;

.field private mDate:Landroid/widget/TextClock;

.field private mDigitalClockAmPm:Landroid/widget/TextClock;

.field private mNextAlarmText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0, p1, v0, v1}, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 38
    iput-object p2, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mClockView:Landroid/widget/TextClock;

    .line 42
    iput-object p2, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mDigitalClockAmPm:Landroid/widget/TextClock;

    .line 44
    iput-object p2, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mDate:Landroid/widget/TextClock;

    .line 46
    iput-object p2, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mAlarmStatusView:Landroid/widget/TextView;

    .line 48
    iput-object p2, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mNextAlarmText:Ljava/lang/String;

    .line 78
    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mContext:Landroid/content/Context;

    return-void
.end method

.method private fetchViewHandles()V
    .locals 2

    .line 94
    sget v0, Lcom/android/systemui/R$id;->somc_digital_clock_view_clock:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mClockView:Landroid/widget/TextClock;

    .line 95
    sget v0, Lcom/android/systemui/R$id;->somc_digital_clock_view_am_pm:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mDigitalClockAmPm:Landroid/widget/TextClock;

    .line 96
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mDigitalClockAmPm:Landroid/widget/TextClock;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 97
    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setShowCurrentUserTime(Z)V

    .line 99
    :cond_0
    sget v0, Lcom/android/systemui/R$id;->somc_digital_clock_date:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mDate:Landroid/widget/TextClock;

    .line 100
    sget v0, Lcom/android/systemui/R$id;->somc_digital_clock_alarm:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mAlarmStatusView:Landroid/widget/TextView;

    .line 102
    sget v0, Lcom/android/systemui/R$id;->somc_keyguard_clockplugin_scale_container:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;

    const/4 v1, 0x0

    .line 104
    invoke-virtual {v0, v1}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->setMinScaleForComputeNotifications(F)V

    .line 106
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->refresh()V

    return-void
.end method

.method private refresh()V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock$Patterns;->update(Landroid/content/Context;)V

    .line 111
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->refreshTime()V

    .line 112
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->refreshAlarmStatus()V

    return-void
.end method

.method private refreshAlarmStatus()V
    .locals 6

    .line 145
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mNextAlarmText:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mAlarmStatusView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mNextAlarmText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mAlarmStatusView:Landroid/widget/TextView;

    .line 148
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->keyguard_accessibility_next_alarm:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mNextAlarmText:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 147
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 150
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mAlarmStatusView:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 153
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mAlarmStatusView:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private refreshTime()V
    .locals 4

    .line 117
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mClockView:Landroid/widget/TextClock;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setShowCurrentUserTime(Z)V

    .line 118
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mClockView:Landroid/widget/TextClock;

    sget-object v2, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock$Patterns;->clockView12:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mClockView:Landroid/widget/TextClock;

    sget-object v2, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock$Patterns;->clockView24:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mClockView:Landroid/widget/TextClock;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextClock;->setElegantTextHeight(Z)V

    .line 122
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mDate:Landroid/widget/TextClock;

    sget-object v3, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock$Patterns;->dateView:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mDate:Landroid/widget/TextClock;

    sget-object v3, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock$Patterns;->dateView:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mDate:Landroid/widget/TextClock;

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setShowCurrentUserTime(Z)V

    .line 125
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mDate:Landroid/widget/TextClock;

    invoke-virtual {p0, v2}, Landroid/widget/TextClock;->setVisibility(I)V

    return-void
.end method

.method private updateAmPmVisibility()V
    .locals 4

    .line 130
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mDigitalClockAmPm:Landroid/widget/TextClock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mDigitalClockAmPm:Landroid/widget/TextClock;

    invoke-virtual {v0}, Landroid/widget/TextClock;->is24HourModeEnabled()Z

    move-result v0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 133
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mDigitalClockAmPm:Landroid/widget/TextClock;

    invoke-virtual {p0, v2}, Landroid/widget/TextClock;->setVisibility(I)V

    goto :goto_0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mDigitalClockAmPm:Landroid/widget/TextClock;

    const-string v3, "a"

    invoke-virtual {v0, v3}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 136
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/systemui/R$integer;->somc_digital_clock_max_ampm_chars:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 139
    iget-object v3, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mDigitalClockAmPm:Landroid/widget/TextClock;

    invoke-virtual {v3}, Landroid/widget/TextClock;->length()I

    move-result v3

    if-le v3, v0, :cond_1

    move v1, v2

    .line 140
    :cond_1
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mDigitalClockAmPm:Landroid/widget/TextClock;

    invoke-virtual {p0, v1}, Landroid/widget/TextClock;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateThemeColors()V
    .locals 3

    .line 193
    const-class v0, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;

    .line 194
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;

    invoke-virtual {v0}, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 196
    sget v1, Lcom/android/systemui/R$color;->somc_keyguard_theme_color_solid_foreground:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 199
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mClockView:Landroid/widget/TextClock;

    invoke-virtual {v1, v0}, Landroid/widget/TextClock;->setTextColor(I)V

    .line 200
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mDigitalClockAmPm:Landroid/widget/TextClock;

    invoke-virtual {v1, v0}, Landroid/widget/TextClock;->setTextColor(I)V

    .line 201
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mDate:Landroid/widget/TextClock;

    invoke-virtual {v1, v0}, Landroid/widget/TextClock;->setTextColor(I)V

    .line 202
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mAlarmStatusView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 203
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mAlarmStatusView:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    .line 204
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mAlarmStatusView:Landroid/widget/TextView;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setCompoundDrawableTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dozeTimeTick()V
    .locals 0

    .line 189
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->refresh()V

    return-void
.end method

.method protected final onFinishInflate()V
    .locals 0

    .line 83
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 85
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->fetchViewHandles()V

    .line 86
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->updateThemeColors()V

    return-void
.end method

.method public setDoze()V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mClockView:Landroid/widget/TextClock;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setTextColor(I)V

    .line 178
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mDigitalClockAmPm:Landroid/widget/TextClock;

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setTextColor(I)V

    .line 179
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mDate:Landroid/widget/TextClock;

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setTextColor(I)V

    .line 180
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mAlarmStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 181
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mAlarmStatusView:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    .line 182
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mAlarmStatusView:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawableTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 184
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public final setNextAlarmText(Ljava/lang/String;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->mNextAlarmText:Ljava/lang/String;

    .line 160
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->refreshAlarmStatus()V

    .line 161
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->updateAmPmVisibility()V

    return-void
.end method

.method public final startClockTicking()V
    .locals 0

    .line 166
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->refresh()V

    return-void
.end method

.method public final stopClockTicking()V
    .locals 0

    return-void
.end method
