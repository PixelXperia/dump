.class public abstract Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;
.super Lcom/android/settings/core/InstrumentedPreferenceFragment;
.source "SomcSettingsPreferenceFragment.java"

# interfaces
.implements Lcom/sonymobile/settings/preference/util/PreferencesAdder;


# instance fields
.field private mResumeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sonymobile/settings/preference/util/DependOn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected customizeOnResume()V
    .locals 1

    .line 48
    iget-object p0, p0, Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;->mResumeListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/settings/preference/util/DependOn;

    .line 49
    invoke-interface {v0}, Lcom/sonymobile/settings/preference/util/DependOn;->onResume()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected customizePreferences()V
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;->mResumeListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;->mResumeListeners:Ljava/util/ArrayList;

    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 40
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;->mResumeListeners:Ljava/util/ArrayList;

    invoke-static {v0, v1, p0, v2}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->addPreferencesFromResource(Landroid/content/Context;Landroidx/preference/PreferenceScreen;Lcom/sonymobile/settings/preference/util/PreferencesAdder;Ljava/util/Collection;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;->mResumeListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;->customizePreferences()V

    .line 59
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 61
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    .line 62
    invoke-virtual {p1}, Landroid/view/ViewGroup;->clearFocus()V

    .line 63
    new-instance v0, Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment$1;

    invoke-direct {v0, p0, p1}, Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment$1;-><init>(Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 76
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPause()V

    .line 77
    iget-object p0, p0, Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;->mResumeListeners:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    .line 78
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/settings/preference/util/DependOn;

    .line 79
    invoke-interface {v0}, Lcom/sonymobile/settings/preference/util/DependOn;->onPause()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 26
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onResume()V

    .line 28
    invoke-virtual {p0}, Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;->customizeOnResume()V

    return-void
.end method
