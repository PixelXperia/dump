.class Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;
.super Ljava/lang/Object;
.source "CaptionPropertiesFragment.java"

# interfaces
.implements Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/CaptionPropertiesFragment;->onInstallSwitchBarToggleSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Lcom/android/settings/widget/ToggleSwitch;Z)Z
    .locals 1

    .line 203
    iget-object p1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {p1}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->access$000(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/android/settings/widget/SwitchBar;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 204
    iget-object p1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "accessibility_captioning_enabled"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 206
    iget-object p1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 207
    iget-object p1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {p1}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->access$100(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/android/internal/widget/SubtitleView;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 208
    iget-object p0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->access$100(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/android/internal/widget/SubtitleView;

    move-result-object p0

    if-eqz p2, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/SubtitleView;->setVisibility(I)V

    :cond_1
    return v0
.end method
