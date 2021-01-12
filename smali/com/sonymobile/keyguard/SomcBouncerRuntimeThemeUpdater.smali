.class public Lcom/sonymobile/keyguard/SomcBouncerRuntimeThemeUpdater;
.super Ljava/lang/Object;
.source "SomcBouncerRuntimeThemeUpdater.java"


# static fields
.field private static final MSIM_TEXT_IDS:[I

.field private static final NUM_PAD_KEY_IDS:[I

.field private static final OPERATION_KEY_IDS:[I

.field private static final VIEW_HAVING_RIPPLE_IDS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/16 v0, 0xa

    new-array v1, v0, [I

    .line 34
    sget v2, Lcom/android/systemui/R$id;->key1:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/R$id;->key2:I

    const/4 v4, 0x1

    aput v2, v1, v4

    sget v2, Lcom/android/systemui/R$id;->key3:I

    const/4 v5, 0x2

    aput v2, v1, v5

    sget v2, Lcom/android/systemui/R$id;->key4:I

    const/4 v6, 0x3

    aput v2, v1, v6

    sget v2, Lcom/android/systemui/R$id;->key5:I

    const/4 v7, 0x4

    aput v2, v1, v7

    sget v2, Lcom/android/systemui/R$id;->key6:I

    const/4 v8, 0x5

    aput v2, v1, v8

    sget v2, Lcom/android/systemui/R$id;->key7:I

    const/4 v9, 0x6

    aput v2, v1, v9

    sget v2, Lcom/android/systemui/R$id;->key8:I

    const/4 v10, 0x7

    aput v2, v1, v10

    sget v2, Lcom/android/systemui/R$id;->key9:I

    const/16 v11, 0x8

    aput v2, v1, v11

    sget v2, Lcom/android/systemui/R$id;->key0:I

    const/16 v12, 0x9

    aput v2, v1, v12

    sput-object v1, Lcom/sonymobile/keyguard/SomcBouncerRuntimeThemeUpdater;->NUM_PAD_KEY_IDS:[I

    new-array v1, v4, [I

    .line 39
    sget v2, Lcom/android/systemui/R$id;->delete_button:I

    aput v2, v1, v3

    sput-object v1, Lcom/sonymobile/keyguard/SomcBouncerRuntimeThemeUpdater;->OPERATION_KEY_IDS:[I

    new-array v1, v5, [I

    .line 43
    sget v2, Lcom/android/systemui/R$id;->slot_id_name:I

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/R$id;->sub_display_name:I

    aput v2, v1, v4

    sput-object v1, Lcom/sonymobile/keyguard/SomcBouncerRuntimeThemeUpdater;->MSIM_TEXT_IDS:[I

    const/16 v1, 0xc

    new-array v1, v1, [I

    .line 47
    sget v2, Lcom/android/systemui/R$id;->key1:I

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/R$id;->key2:I

    aput v2, v1, v4

    sget v2, Lcom/android/systemui/R$id;->key3:I

    aput v2, v1, v5

    sget v2, Lcom/android/systemui/R$id;->key4:I

    aput v2, v1, v6

    sget v2, Lcom/android/systemui/R$id;->key5:I

    aput v2, v1, v7

    sget v2, Lcom/android/systemui/R$id;->key6:I

    aput v2, v1, v8

    sget v2, Lcom/android/systemui/R$id;->key7:I

    aput v2, v1, v9

    sget v2, Lcom/android/systemui/R$id;->key8:I

    aput v2, v1, v10

    sget v2, Lcom/android/systemui/R$id;->key9:I

    aput v2, v1, v11

    sget v2, Lcom/android/systemui/R$id;->key0:I

    aput v2, v1, v12

    sget v2, Lcom/android/systemui/R$id;->key_enter:I

    aput v2, v1, v0

    sget v0, Lcom/android/systemui/R$id;->delete_button:I

    const/16 v2, 0xb

    aput v0, v1, v2

    sput-object v1, Lcom/sonymobile/keyguard/SomcBouncerRuntimeThemeUpdater;->VIEW_HAVING_RIPPLE_IDS:[I

    return-void
.end method

.method private static getPasswordTextViewId(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)I
    .locals 1

    .line 214
    sget-object v0, Lcom/sonymobile/keyguard/SomcBouncerRuntimeThemeUpdater$1;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 222
    :cond_0
    sget p0, Lcom/android/systemui/R$id;->pukEntry:I

    goto :goto_0

    .line 219
    :cond_1
    sget p0, Lcom/android/systemui/R$id;->simPinEntry:I

    goto :goto_0

    .line 216
    :cond_2
    sget p0, Lcom/android/systemui/R$id;->pinEntry:I

    :goto_0
    return p0
.end method

.method private static getSecurityModeForView(Landroid/view/View;)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 1

    .line 82
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Invalid:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eqz p0, :cond_5

    .line 84
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p0

    .line 85
    sget v0, Lcom/android/systemui/R$id;->keyguard_pattern_view:I

    if-ne p0, v0, :cond_0

    .line 86
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_0

    .line 87
    :cond_0
    sget v0, Lcom/android/systemui/R$id;->keyguard_pin_view:I

    if-ne p0, v0, :cond_1

    .line 88
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_0

    .line 89
    :cond_1
    sget v0, Lcom/android/systemui/R$id;->keyguard_password_view:I

    if-ne p0, v0, :cond_2

    .line 90
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_0

    .line 91
    :cond_2
    sget v0, Lcom/android/systemui/R$id;->keyguard_sim_pin_view:I

    if-ne p0, v0, :cond_3

    .line 92
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_0

    .line 93
    :cond_3
    sget v0, Lcom/android/systemui/R$id;->keyguard_sim_puk_view:I

    if-ne p0, v0, :cond_4

    .line 94
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_0

    .line 96
    :cond_4
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Invalid:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    :cond_5
    :goto_0
    return-object v0
.end method

.method private static isPinBasedInputView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z
    .locals 1

    .line 231
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p0, v0, :cond_1

    invoke-static {p0}, Lcom/sonymobile/keyguard/SomcBouncerRuntimeThemeUpdater;->isSimPinOrPukView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isSimPinOrPukView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z
    .locals 1

    .line 235
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static updateCarrierTextColor(Landroid/view/View;I)V
    .locals 1

    .line 197
    sget v0, Lcom/android/systemui/R$id;->carrier_text:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 199
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method private static updateCompoundDrawableTint(Landroid/widget/TextView;I)V
    .locals 0

    .line 293
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    .line 294
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setCompoundDrawableTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method private static updateDeleteAndEnterKeyColor(Landroid/view/View;I)V
    .locals 3

    const/4 v0, 0x0

    .line 166
    :goto_0
    sget-object v1, Lcom/sonymobile/keyguard/SomcBouncerRuntimeThemeUpdater;->OPERATION_KEY_IDS:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 167
    aget v1, v1, v0

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 168
    instance-of v2, v1, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 169
    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v1, p1}, Lcom/sonymobile/keyguard/SomcBouncerRuntimeThemeUpdater;->updateImageTint(Landroid/widget/ImageView;I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static updateDividerColor(Landroid/view/View;I)V
    .locals 1

    .line 175
    sget v0, Lcom/android/systemui/R$id;->divider:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 177
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method private static updateEmergencyButton(Landroid/view/View;Landroid/content/res/Resources;II)V
    .locals 2

    .line 247
    sget v0, Lcom/android/systemui/R$id;->emergency_call_button:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 248
    instance-of v0, p0, Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 249
    check-cast p0, Landroid/widget/Button;

    .line 250
    sget v0, Lcom/android/systemui/R$drawable;->somc_keyguard_secure_button:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 252
    invoke-virtual {p0, p2}, Landroid/widget/Button;->setTextColor(I)V

    .line 253
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 254
    invoke-static {p0, p3}, Lcom/sonymobile/keyguard/SomcBouncerRuntimeThemeUpdater;->updateCompoundDrawableTint(Landroid/widget/TextView;I)V

    :cond_0
    return-void
.end method

.method private static updateExitTextColors(Landroid/view/View;II)V
    .locals 1

    .line 272
    sget v0, Lcom/android/systemui/R$id;->passwordEntry:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 273
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 274
    move-object v0, p0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 275
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 276
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p2, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method private static updateImageTint(Landroid/widget/ImageView;I)V
    .locals 0

    .line 288
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 289
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method private static updateImeButtonColor(Landroid/view/View;I)V
    .locals 1

    .line 281
    sget v0, Lcom/android/systemui/R$id;->switch_ime_button:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 282
    instance-of v0, p0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 283
    check-cast p0, Landroid/widget/ImageView;

    invoke-static {p0, p1}, Lcom/sonymobile/keyguard/SomcBouncerRuntimeThemeUpdater;->updateImageTint(Landroid/widget/ImageView;I)V

    :cond_0
    return-void
.end method

.method private static updateMSimTextColor(Landroid/view/View;I)V
    .locals 3

    const/4 v0, 0x0

    .line 204
    :goto_0
    sget-object v1, Lcom/sonymobile/keyguard/SomcBouncerRuntimeThemeUpdater;->MSIM_TEXT_IDS:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 205
    aget v1, v1, v0

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 206
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 207
    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static updateMessageAreaColor(Landroid/view/View;I)V
    .locals 1

    .line 239
    sget v0, Lcom/android/systemui/R$id;->keyguard_message_area:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 240
    instance-of v0, p0, Lcom/android/keyguard/SecurityMessageDisplay;

    if-eqz v0, :cond_0

    .line 241
    check-cast p0, Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {p0, p1}, Lcom/android/keyguard/SecurityMessageDisplay;->setDefaultMessageColor(I)V

    :cond_0
    return-void
.end method

.method private static updateNumPadKeys(Landroid/view/View;II)V
    .locals 3

    const/4 v0, 0x0

    .line 131
    :goto_0
    sget-object v1, Lcom/sonymobile/keyguard/SomcBouncerRuntimeThemeUpdater;->NUM_PAD_KEY_IDS:[I

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 132
    aget v1, v1, v0

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 134
    sget v2, Lcom/android/systemui/R$id;->digit_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 136
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 138
    :cond_0
    sget v2, Lcom/android/systemui/R$id;->klondike_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 140
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static updatePasswordTextColor(Landroid/view/View;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;I)V
    .locals 0

    .line 159
    invoke-static {p1}, Lcom/sonymobile/keyguard/SomcBouncerRuntimeThemeUpdater;->getPasswordTextViewId(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 160
    instance-of p1, p0, Lcom/android/keyguard/PasswordTextView;

    if-eqz p1, :cond_0

    .line 161
    check-cast p0, Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p0, p2}, Lcom/android/keyguard/PasswordTextView;->updateDrawColor(I)V

    :cond_0
    return-void
.end method

.method private static updatePasswordView(Landroid/view/View;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Landroid/content/res/Resources;I)V
    .locals 2

    .line 260
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v0, :cond_0

    .line 261
    sget p1, Lcom/android/systemui/R$color;->somc_keyguard_theme_color_primary_text:I

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    .line 263
    sget v1, Lcom/android/systemui/R$color;->somc_keyguard_theme_color_translucent_foreground:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    .line 266
    invoke-static {p0, p1, p2}, Lcom/sonymobile/keyguard/SomcBouncerRuntimeThemeUpdater;->updateExitTextColors(Landroid/view/View;II)V

    .line 267
    invoke-static {p0, p3}, Lcom/sonymobile/keyguard/SomcBouncerRuntimeThemeUpdater;->updateImeButtonColor(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method private static updatePatternView(Landroid/view/View;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Landroid/content/res/Resources;)V
    .locals 2

    .line 298
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v0, :cond_0

    .line 299
    sget p1, Lcom/android/systemui/R$id;->lockPatternView:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 300
    instance-of p1, p0, Lcom/android/internal/widget/LockPatternView;

    if-eqz p1, :cond_0

    .line 301
    sget p1, Lcom/android/systemui/R$color;->somc_keyguard_theme_color_pattern_regular:I

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    .line 303
    sget v1, Lcom/android/systemui/R$color;->somc_keyguard_theme_color_pattern_error:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    .line 306
    check-cast p0, Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {p0, p1, p2, p1}, Lcom/android/internal/widget/LockPatternView;->updateColors(III)V

    :cond_0
    return-void
.end method

.method private static updatePinEntryViews(Landroid/view/View;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Landroid/content/res/Resources;I)V
    .locals 4

    .line 104
    invoke-static {p1}, Lcom/sonymobile/keyguard/SomcBouncerRuntimeThemeUpdater;->isPinBasedInputView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    sget v0, Lcom/android/systemui/R$color;->somc_keyguard_theme_color_translucent_foreground:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 107
    sget v2, Lcom/android/systemui/R$color;->somc_keyguard_theme_color_ripple_color:I

    invoke-virtual {p2, v2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    .line 109
    sget v3, Lcom/android/systemui/R$color;->somc_keyguard_theme_color_faint_foreground:I

    invoke-virtual {p2, v3, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    .line 112
    invoke-static {p0, p3, v0}, Lcom/sonymobile/keyguard/SomcBouncerRuntimeThemeUpdater;->updateNumPadKeys(Landroid/view/View;II)V

    .line 113
    invoke-static {p0, v2}, Lcom/sonymobile/keyguard/SomcBouncerRuntimeThemeUpdater;->updateRipples(Landroid/view/View;I)V

    .line 114
    invoke-static {p0, p1, p3}, Lcom/sonymobile/keyguard/SomcBouncerRuntimeThemeUpdater;->updatePasswordTextColor(Landroid/view/View;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;I)V

    .line 115
    invoke-static {p0, p3}, Lcom/sonymobile/keyguard/SomcBouncerRuntimeThemeUpdater;->updateDeleteAndEnterKeyColor(Landroid/view/View;I)V

    .line 116
    invoke-static {p0, v3}, Lcom/sonymobile/keyguard/SomcBouncerRuntimeThemeUpdater;->updateDividerColor(Landroid/view/View;I)V

    .line 117
    invoke-static {p1}, Lcom/sonymobile/keyguard/SomcBouncerRuntimeThemeUpdater;->isSimPinOrPukView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 118
    sget p1, Lcom/android/systemui/R$color;->somc_keyguard_theme_color_primary_text:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    .line 120
    sget v0, Lcom/android/systemui/R$color;->somc_keyguard_theme_color_secondary_text:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    .line 123
    invoke-static {p0, p3}, Lcom/sonymobile/keyguard/SomcBouncerRuntimeThemeUpdater;->updateSimIconsColor(Landroid/view/View;I)V

    .line 124
    invoke-static {p0, p2}, Lcom/sonymobile/keyguard/SomcBouncerRuntimeThemeUpdater;->updateCarrierTextColor(Landroid/view/View;I)V

    .line 125
    invoke-static {p0, p1}, Lcom/sonymobile/keyguard/SomcBouncerRuntimeThemeUpdater;->updateMSimTextColor(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method private static updateRipples(Landroid/view/View;I)V
    .locals 3

    const/4 v0, 0x0

    .line 147
    :goto_0
    sget-object v1, Lcom/sonymobile/keyguard/SomcBouncerRuntimeThemeUpdater;->VIEW_HAVING_RIPPLE_IDS:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 148
    aget v1, v1, v0

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 150
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 151
    instance-of v2, v1, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v2, :cond_0

    .line 152
    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static updateSecurityViewResources(Landroid/view/View;Landroid/content/res/Resources;)V
    .locals 4

    if-eqz p1, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    const-class p1, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;

    invoke-virtual {p1}, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 65
    invoke-static {p0}, Lcom/sonymobile/keyguard/SomcBouncerRuntimeThemeUpdater;->getSecurityModeForView(Landroid/view/View;)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 66
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Invalid:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_1

    .line 67
    sget v1, Lcom/android/systemui/R$color;->somc_keyguard_theme_color_solid_foreground:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 69
    sget v3, Lcom/android/systemui/R$color;->somc_keyguard_theme_color_secondary_text:I

    invoke-virtual {p1, v3, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    .line 72
    invoke-static {p0, v0, p1, v1}, Lcom/sonymobile/keyguard/SomcBouncerRuntimeThemeUpdater;->updatePinEntryViews(Landroid/view/View;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Landroid/content/res/Resources;I)V

    .line 73
    invoke-static {p0, v0, p1}, Lcom/sonymobile/keyguard/SomcBouncerRuntimeThemeUpdater;->updatePatternView(Landroid/view/View;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Landroid/content/res/Resources;)V

    .line 74
    invoke-static {p0, v0, p1, v1}, Lcom/sonymobile/keyguard/SomcBouncerRuntimeThemeUpdater;->updatePasswordView(Landroid/view/View;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Landroid/content/res/Resources;I)V

    .line 75
    invoke-static {p0, v2}, Lcom/sonymobile/keyguard/SomcBouncerRuntimeThemeUpdater;->updateMessageAreaColor(Landroid/view/View;I)V

    .line 76
    invoke-static {p0, p1, v2, v1}, Lcom/sonymobile/keyguard/SomcBouncerRuntimeThemeUpdater;->updateEmergencyButton(Landroid/view/View;Landroid/content/res/Resources;II)V

    :cond_1
    return-void
.end method

.method private static updateSimIconsColor(Landroid/view/View;I)V
    .locals 1

    .line 183
    instance-of v0, p0, Lcom/android/keyguard/KeyguardSimPinView;

    if-eqz v0, :cond_0

    .line 184
    move-object v0, p0

    check-cast v0, Lcom/android/keyguard/KeyguardSimPinView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardSimPinView;->updateSimImageColor(I)V

    goto :goto_0

    .line 185
    :cond_0
    instance-of v0, p0, Lcom/android/keyguard/KeyguardSimPukView;

    if-eqz v0, :cond_1

    .line 186
    move-object v0, p0

    check-cast v0, Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardSimPukView;->updateSimImageColor(I)V

    .line 190
    :cond_1
    :goto_0
    sget v0, Lcom/android/systemui/R$id;->somc_keyguard_sim_small_icon:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 191
    instance-of v0, p0, Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 192
    check-cast p0, Landroid/widget/ImageView;

    invoke-static {p0, p1}, Lcom/sonymobile/keyguard/SomcBouncerRuntimeThemeUpdater;->updateImageTint(Landroid/widget/ImageView;I)V

    :cond_2
    return-void
.end method
