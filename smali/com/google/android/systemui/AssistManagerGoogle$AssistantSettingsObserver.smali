.class Lcom/google/android/systemui/AssistManagerGoogle$AssistantSettingsObserver;
.super Landroid/database/ContentObserver;
.source "AssistManagerGoogle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/AssistManagerGoogle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AssistantSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/AssistManagerGoogle;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/AssistManagerGoogle;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/google/android/systemui/AssistManagerGoogle$AssistantSettingsObserver;->this$0:Lcom/google/android/systemui/AssistManagerGoogle;

    .line 100
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/google/android/systemui/AssistManagerGoogle$AssistantSettingsObserver;->this$0:Lcom/google/android/systemui/AssistManagerGoogle;

    invoke-static {p0}, Lcom/google/android/systemui/AssistManagerGoogle;->access$000(Lcom/google/android/systemui/AssistManagerGoogle;)V

    return-void
.end method
