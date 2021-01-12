.class Lcom/android/systemui/recents/LegacyRecentsImpl$11;
.super Ljava/lang/Object;
.source "LegacyRecentsImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/LegacyRecentsImpl;->postToSystemUser(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/LegacyRecentsImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/LegacyRecentsImpl;)V
    .locals 0

    .line 720
    iput-object p1, p0, Lcom/android/systemui/recents/LegacyRecentsImpl$11;->this$0:Lcom/android/systemui/recents/LegacyRecentsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 723
    iget-object p0, p0, Lcom/android/systemui/recents/LegacyRecentsImpl$11;->this$0:Lcom/android/systemui/recents/LegacyRecentsImpl;

    invoke-static {p0}, Lcom/android/systemui/recents/LegacyRecentsImpl;->access$200(Lcom/android/systemui/recents/LegacyRecentsImpl;)V

    return-void
.end method
