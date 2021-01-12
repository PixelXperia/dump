.class public Lcom/sonymobile/keyguard/SomcKeyguardRuntimeResources;
.super Ljava/lang/Object;
.source "SomcKeyguardRuntimeResources.java"


# direct methods
.method private static getSecurityView(Lcom/android/keyguard/KeyguardSecurityViewFlipper;)Landroid/view/View;
    .locals 1

    .line 95
    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 97
    instance-of v0, p0, Lcom/android/keyguard/KeyguardSecurityView;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public static reload(Landroid/view/View;Landroid/content/res/Resources;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 47
    :cond_0
    sget v0, Lcom/android/systemui/R$id;->keyguard_host_view:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 48
    sget v0, Lcom/android/systemui/R$dimen;->somc_keyguard_bouncer_security_bottom_margin:I

    invoke-static {p0, p1, v0}, Lcom/sonymobile/keyguard/SomcKeyguardRuntimeResources;->updateLayoutBottomMargin(Landroid/view/View;Landroid/content/res/Resources;I)V

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 54
    sget v1, Lcom/android/systemui/R$id;->view_flipper:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 55
    instance-of v1, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    if-eqz v1, :cond_1

    .line 56
    check-cast p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-static {p0}, Lcom/sonymobile/keyguard/SomcKeyguardRuntimeResources;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityViewFlipper;)Landroid/view/View;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_4

    .line 62
    sget p0, Lcom/android/systemui/R$id;->keyguard_selector_fade_container:I

    .line 63
    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 67
    instance-of v1, v0, Lcom/android/keyguard/KeyguardSimPinView;

    if-nez v1, :cond_2

    instance-of v2, v0, Lcom/android/keyguard/KeyguardSimPukView;

    if-nez v2, :cond_2

    .line 69
    sget v2, Lcom/android/systemui/R$dimen;->somc_keyguard_emergency_carrier_area_layout_bottom_margin:I

    invoke-static {p0, p1, v2}, Lcom/sonymobile/keyguard/SomcKeyguardRuntimeResources;->updateLayoutBottomMargin(Landroid/view/View;Landroid/content/res/Resources;I)V

    .line 73
    :cond_2
    sget p0, Lcom/android/systemui/R$id;->keyguard_sim:I

    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 74
    sget v2, Lcom/android/systemui/R$string;->somc_keyguard_visible_tablet_or_portrait:I

    invoke-static {p0, p1, v2}, Lcom/sonymobile/keyguard/SomcKeyguardRuntimeResources;->updateVisibility(Landroid/view/View;Landroid/content/res/Resources;I)V

    .line 76
    sget p0, Lcom/android/systemui/R$id;->somc_keyguard_sim_small_icon:I

    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 77
    sget v2, Lcom/android/systemui/R$string;->somc_keyguard_visible_phone_landscape:I

    invoke-static {p0, p1, v2}, Lcom/sonymobile/keyguard/SomcKeyguardRuntimeResources;->updateVisibility(Landroid/view/View;Landroid/content/res/Resources;I)V

    if-nez v1, :cond_3

    .line 81
    instance-of p0, v0, Lcom/android/keyguard/KeyguardSimPukView;

    if-eqz p0, :cond_4

    .line 83
    :cond_3
    invoke-static {v0, p1}, Lcom/sonymobile/keyguard/SomcKeyguardRuntimeResources;->updateMessageArea(Landroid/view/View;Landroid/content/res/Resources;)V

    .line 85
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result p0

    const/4 v1, 0x1

    if-le p0, v1, :cond_4

    .line 86
    sget p0, Lcom/android/systemui/R$id;->sim_info_message:I

    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 87
    sget v0, Lcom/android/systemui/R$string;->somc_keyguard_visible_tablet_or_portrait:I

    invoke-static {p0, p1, v0}, Lcom/sonymobile/keyguard/SomcKeyguardRuntimeResources;->updateVisibility(Landroid/view/View;Landroid/content/res/Resources;I)V

    :cond_4
    return-void
.end method

.method private static updateLayoutBottomMargin(Landroid/view/View;Landroid/content/res/Resources;I)V
    .locals 1

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 136
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 137
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static updateLayoutTopPadding(Landroid/view/View;Landroid/content/res/Resources;I)V
    .locals 2

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 146
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    .line 147
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    .line 146
    invoke-virtual {p0, p2, p1, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static updateMessageArea(Landroid/view/View;Landroid/content/res/Resources;)V
    .locals 3

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 155
    :cond_0
    sget v0, Lcom/android/systemui/R$id;->keyguard_message_area:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_2

    .line 158
    sget v0, Lcom/android/systemui/R$bool;->somc_keyguard_message_area_single_line:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 159
    sget v1, Lcom/android/systemui/R$integer;->somc_keyguard_message_area_max_lines:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 160
    sget v2, Lcom/android/systemui/R$dimen;->somc_keyguard_message_area_padding_top:I

    invoke-static {p0, p1, v2}, Lcom/sonymobile/keyguard/SomcKeyguardRuntimeResources;->updateLayoutTopPadding(Landroid/view/View;Landroid/content/res/Resources;I)V

    .line 162
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 163
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setLines(I)V

    .line 164
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    if-eqz v0, :cond_1

    .line 167
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 169
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static updateVisibility(Landroid/view/View;Landroid/content/res/Resources;I)V
    .locals 2

    const-string v0, "SomcStatusBarKeyguardLoadResources"

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    .line 111
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const-string p1, "Invalid visibility value"

    .line 121
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    const/16 p1, 0x8

    goto :goto_0

    :cond_2
    const/4 p1, 0x4

    :goto_0
    move v1, p1

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "Invalid visibility format"

    .line 125
    invoke-static {v0, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    :cond_3
    :goto_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_2
    return-void
.end method
