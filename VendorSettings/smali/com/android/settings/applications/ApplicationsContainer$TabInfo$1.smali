.class Lcom/android/settings/applications/ApplicationsContainer$TabInfo$1;
.super Ljava/lang/Object;
.source "ApplicationsContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Ib:Lcom/android/settings/applications/ApplicationsContainer$TabInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ApplicationsContainer$TabInfo;)V
    .locals 0

    .prologue
    .line 372
    iput-object p1, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo$1;->Ib:Lcom/android/settings/applications/ApplicationsContainer$TabInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo$1;->Ib:Lcom/android/settings/applications/ApplicationsContainer$TabInfo;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->ki()V

    .line 375
    return-void
.end method
