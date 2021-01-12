.class Lcom/sonymobile/settings/backup/BackupCardPreference$1;
.super Ljava/lang/Object;
.source "BackupCardPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/settings/backup/BackupCardPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/backup/BackupCardPreference;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/backup/BackupCardPreference;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/sonymobile/settings/backup/BackupCardPreference$1;->this$0:Lcom/sonymobile/settings/backup/BackupCardPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 86
    iget-object p1, p0, Lcom/sonymobile/settings/backup/BackupCardPreference$1;->this$0:Lcom/sonymobile/settings/backup/BackupCardPreference;

    invoke-static {p1}, Lcom/sonymobile/settings/backup/BackupCardPreference;->access$000(Lcom/sonymobile/settings/backup/BackupCardPreference;)Lcom/sonymobile/settings/backup/BackupCardPreference$BackupPreferenceListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 87
    iget-object p0, p0, Lcom/sonymobile/settings/backup/BackupCardPreference$1;->this$0:Lcom/sonymobile/settings/backup/BackupCardPreference;

    invoke-static {p0}, Lcom/sonymobile/settings/backup/BackupCardPreference;->access$000(Lcom/sonymobile/settings/backup/BackupCardPreference;)Lcom/sonymobile/settings/backup/BackupCardPreference$BackupPreferenceListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonymobile/settings/backup/BackupCardPreference$BackupPreferenceListener;->dismiss()V

    :cond_0
    return-void
.end method
