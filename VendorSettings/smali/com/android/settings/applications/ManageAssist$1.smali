.class Lcom/android/settings/applications/ManageAssist$1;
.super Ljava/lang/Object;
.source "ManageAssist.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Kr:Lcom/android/settings/applications/ManageAssist;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ManageAssist;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/settings/applications/ManageAssist$1;->Kr:Lcom/android/settings/applications/ManageAssist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/settings/applications/ManageAssist$1;->Kr:Lcom/android/settings/applications/ManageAssist;

    invoke-static {v0}, Lcom/android/settings/applications/ManageAssist;->a(Lcom/android/settings/applications/ManageAssist;)V

    .line 128
    return-void
.end method
