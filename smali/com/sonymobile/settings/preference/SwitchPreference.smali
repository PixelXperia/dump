.class public Lcom/sonymobile/settings/preference/SwitchPreference;
.super Landroidx/preference/SwitchPreference;
.source "SwitchPreference.java"

# interfaces
.implements Lcom/sonymobile/settings/preference/util/DependOn;


# instance fields
.field private final mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;

.field private final mTwoStateUtil:Lcom/sonymobile/settings/preference/util/TwoStateUtil;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x7f0402ff

    const v1, 0x101036d

    .line 52
    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/settings/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    new-instance v0, Lcom/sonymobile/settings/preference/util/DependOnUtil;

    invoke-direct {v0, p1, p2, p3}, Lcom/sonymobile/settings/preference/util/DependOnUtil;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/sonymobile/settings/preference/SwitchPreference;->mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;

    .line 48
    new-instance v0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;

    invoke-direct {v0, p1, p2, p3, p0}, Lcom/sonymobile/settings/preference/util/TwoStateUtil;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroidx/preference/TwoStatePreference;)V

    iput-object v0, p0, Lcom/sonymobile/settings/preference/SwitchPreference;->mTwoStateUtil:Lcom/sonymobile/settings/preference/util/TwoStateUtil;

    return-void
.end method


# virtual methods
.method public dependOn()Z
    .locals 3

    .line 67
    invoke-virtual {p0}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/sonymobile/settings/preference/SwitchPreference;->mTwoStateUtil:Lcom/sonymobile/settings/preference/util/TwoStateUtil;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->setIntent(Landroid/content/Intent;)V

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/settings/preference/SwitchPreference;->mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/settings/preference/SwitchPreference;->mTwoStateUtil:Lcom/sonymobile/settings/preference/util/TwoStateUtil;

    invoke-virtual {v2}, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, p0, v2}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->dependOn(Landroid/content/Context;Landroidx/preference/Preference;Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public getAfter()Ljava/lang/String;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/sonymobile/settings/preference/SwitchPreference;->mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;

    invoke-virtual {p0}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->getAfter()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBefore()Ljava/lang/String;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/sonymobile/settings/preference/SwitchPreference;->mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;

    invoke-virtual {p0}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->getBefore()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getParentKey()Ljava/lang/String;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/sonymobile/settings/preference/SwitchPreference;->mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;

    invoke-virtual {p0}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->getParentKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasResumeActions()Z
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/sonymobile/settings/preference/SwitchPreference;->mTwoStateUtil:Lcom/sonymobile/settings/preference/util/TwoStateUtil;

    invoke-virtual {p0}, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->hasResumeActions()Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/sonymobile/settings/preference/SwitchPreference;->mTwoStateUtil:Lcom/sonymobile/settings/preference/util/TwoStateUtil;

    invoke-virtual {p0}, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/sonymobile/settings/preference/SwitchPreference;->mTwoStateUtil:Lcom/sonymobile/settings/preference/util/TwoStateUtil;

    invoke-virtual {p0}, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->onResume()V

    return-void
.end method
