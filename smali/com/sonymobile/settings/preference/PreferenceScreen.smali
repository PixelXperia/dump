.class public Lcom/sonymobile/settings/preference/PreferenceScreen;
.super Landroidx/preference/Preference;
.source "PreferenceScreen.java"

# interfaces
.implements Lcom/sonymobile/settings/preference/util/DependOn;


# instance fields
.field private final mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x7f04024e

    const v1, 0x101008b

    .line 48
    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/settings/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    new-instance v0, Lcom/sonymobile/settings/preference/util/DependOnUtil;

    invoke-direct {v0, p1, p2, p3}, Lcom/sonymobile/settings/preference/util/DependOnUtil;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/sonymobile/settings/preference/PreferenceScreen;->mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;

    return-void
.end method


# virtual methods
.method public dependOn()Z
    .locals 3

    .line 63
    invoke-virtual {p0}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 64
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/settings/preference/PreferenceScreen;->mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, p0, v2}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->dependOn(Landroid/content/Context;Landroidx/preference/Preference;Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public getAfter()Ljava/lang/String;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/sonymobile/settings/preference/PreferenceScreen;->mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;

    invoke-virtual {p0}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->getAfter()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBefore()Ljava/lang/String;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/sonymobile/settings/preference/PreferenceScreen;->mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;

    invoke-virtual {p0}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->getBefore()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getParentKey()Ljava/lang/String;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/sonymobile/settings/preference/PreferenceScreen;->mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;

    invoke-virtual {p0}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->getParentKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasResumeActions()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method
