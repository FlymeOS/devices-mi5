.class Lcom/android/settings/applications/ManageDefaultApps$1;
.super Ljava/lang/Object;
.source "ManageDefaultApps.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Kw:Lcom/android/settings/applications/ManageDefaultApps;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ManageDefaultApps;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/settings/applications/ManageDefaultApps$1;->Kw:Lcom/android/settings/applications/ManageDefaultApps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/applications/ManageDefaultApps$1;->Kw:Lcom/android/settings/applications/ManageDefaultApps;

    invoke-static {v0}, Lcom/android/settings/applications/ManageDefaultApps;->a(Lcom/android/settings/applications/ManageDefaultApps;)V

    .line 68
    return-void
.end method
