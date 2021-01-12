.class Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment$1;
.super Ljava/lang/Object;
.source "SomcSettingsPreferenceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;

.field final synthetic val$list:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment$1;->this$0:Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;

    iput-object p2, p0, Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment$1;->val$list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 68
    iget-object p0, p0, Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment$1;->val$list:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method
