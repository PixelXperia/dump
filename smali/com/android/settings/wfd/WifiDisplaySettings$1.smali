.class Lcom/android/settings/wfd/WifiDisplaySettings$1;
.super Landroidx/preference/Preference;
.source "WifiDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wfd/WifiDisplaySettings;->buildCertificationMenu(Landroidx/preference/PreferenceScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;)V
    .locals 0

    .line 352
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$1;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-direct {p0, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 355
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a0249

    .line 357
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f121532

    .line 358
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 359
    new-instance v1, Lcom/android/settings/wfd/WifiDisplaySettings$1$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$1$1;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a036d

    .line 366
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const v0, 0x7f121533

    .line 367
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 368
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$1$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$1$2;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings$1;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
