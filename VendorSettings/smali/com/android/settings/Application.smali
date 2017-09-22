.class public Lcom/android/settings/Application;
.super Lmiui/external/a;
.source "Application.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lmiui/external/a;-><init>()V

    return-void
.end method


# virtual methods
.method public M()Lmiui/external/b;
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lcom/android/settings/hu;

    invoke-direct {v0}, Lcom/android/settings/hu;-><init>()V

    return-object v0
.end method
