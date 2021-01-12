.class public Lcom/sonymobile/settings/TetherConfirmationDialog;
.super Landroid/app/Activity;
.source "TetherConfirmationDialog.java"


# instance fields
.field private mCheckbox:Landroid/widget/CheckBox;

.field private mDialog:Landroid/app/AlertDialog;

.field private mDialogMessageId:I

.field private mPreferenceShowDialog:Ljava/lang/String;

.field private mShowCheckbox:Z

.field private mTetherChoice:I

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mPreferenceShowDialog:Ljava/lang/String;

    const/4 v1, 0x0

    .line 52
    iput v1, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mTetherChoice:I

    .line 53
    iput v1, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mDialogMessageId:I

    .line 55
    iput-object v0, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mDialog:Landroid/app/AlertDialog;

    .line 56
    iput-boolean v1, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mShowCheckbox:Z

    .line 57
    iput-object v0, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mCheckbox:Landroid/widget/CheckBox;

    .line 58
    iput-object v0, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/settings/TetherConfirmationDialog;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mTetherChoice:I

    return p0
.end method

.method static synthetic access$100(Lcom/sonymobile/settings/TetherConfirmationDialog;)Landroid/widget/CheckBox;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mCheckbox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sonymobile/settings/TetherConfirmationDialog;)Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mPreferenceShowDialog:Ljava/lang/String;

    return-object p0
.end method

.method public static openConfirmDialog(Landroidx/fragment/app/Fragment;I)V
    .locals 3

    .line 115
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sonymobile/settings/TetherConfirmationDialog;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "TETHER_TYPE"

    .line 118
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p1, 0x3

    .line 119
    invoke-virtual {p0, v1, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mShowCheckbox:Z

    .line 64
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120503

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mUrl:Ljava/lang/String;

    const/4 v0, 0x0

    .line 66
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 69
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "TETHER_TYPE"

    if-eqz v2, :cond_0

    .line 70
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 71
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mTetherChoice:I

    .line 73
    :cond_0
    iget v2, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mTetherChoice:I

    const/4 v4, 0x2

    const-string v5, "show_tether_dialog"

    const/4 v6, 0x1

    if-ne v2, v4, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    if-ne v2, v6, :cond_2

    .line 79
    iput-object v5, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mPreferenceShowDialog:Ljava/lang/String;

    const v2, 0x7f1213ac

    .line 80
    iput v2, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mDialogMessageId:I

    goto :goto_0

    :cond_2
    const-string v2, "show_wifi_tether_dialog"

    .line 83
    iput-object v2, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mPreferenceShowDialog:Ljava/lang/String;

    const v2, 0x7f121651

    .line 84
    iput v2, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mDialogMessageId:I

    :goto_0
    move v2, v6

    :goto_1
    if-eqz v2, :cond_4

    .line 87
    iget-boolean v2, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mShowCheckbox:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mPreferenceShowDialog:Ljava/lang/String;

    .line 88
    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move v2, v6

    goto :goto_2

    :cond_4
    move v2, v0

    :goto_2
    if-eqz v2, :cond_5

    .line 90
    iget v4, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mTetherChoice:I

    if-nez v4, :cond_5

    const-string v2, "wifi"

    .line 92
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 93
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    .line 96
    :cond_5
    iget-object v4, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mUrl:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    .line 97
    iput-object v5, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mPreferenceShowDialog:Ljava/lang/String;

    .line 98
    iget-boolean v2, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mShowCheckbox:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mPreferenceShowDialog:Ljava/lang/String;

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    move v2, v0

    goto :goto_4

    :cond_7
    :goto_3
    move v2, v6

    :cond_8
    :goto_4
    if-eqz v2, :cond_9

    .line 100
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_5

    :cond_9
    move v6, v0

    :goto_5
    if-eqz v6, :cond_a

    .line 102
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_6

    .line 104
    :cond_a
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 105
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 106
    iget v1, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mTetherChoice:I

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 107
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 108
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 109
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_6
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7

    .line 132
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f121284

    .line 133
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/sonymobile/settings/TetherConfirmationDialog$3;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/TetherConfirmationDialog$3;-><init>(Lcom/sonymobile/settings/TetherConfirmationDialog;)V

    const/high16 v1, 0x1040000

    .line 134
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/sonymobile/settings/TetherConfirmationDialog$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/TetherConfirmationDialog$2;-><init>(Lcom/sonymobile/settings/TetherConfirmationDialog;)V

    const v1, 0x104000a

    .line 139
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/sonymobile/settings/TetherConfirmationDialog$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/TetherConfirmationDialog$1;-><init>(Lcom/sonymobile/settings/TetherConfirmationDialog;)V

    .line 155
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 163
    iget-object v0, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 164
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0d01df

    .line 165
    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a0454

    .line 166
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 167
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120503

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 169
    new-instance v4, Landroid/text/SpannableString;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f12128b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 172
    new-instance v5, Landroid/text/style/URLSpan;

    invoke-direct {v5, v3}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v6, 0x12

    invoke-virtual {v4, v5, v1, v3, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 173
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_0

    .line 176
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0d01de

    .line 177
    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a0267

    .line 178
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 179
    iget v3, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mDialogMessageId:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    const v2, 0x7f0a0453

    .line 182
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mCheckbox:Landroid/widget/CheckBox;

    .line 183
    iget-boolean v2, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mShowCheckbox:Z

    if-eqz v2, :cond_1

    .line 184
    iget-object v2, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_1

    .line 186
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mCheckbox:Landroid/widget/CheckBox;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 189
    :goto_1
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 190
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mDialog:Landroid/app/AlertDialog;

    .line 191
    iget-object p0, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method protected onDestroy()V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 128
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
