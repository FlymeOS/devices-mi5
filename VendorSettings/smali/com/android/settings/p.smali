.class Lcom/android/settings/p;
.super Landroid/database/ContentObserver;
.source "AirplaneModeEnabler.java"


# instance fields
.field final synthetic O:Lcom/android/settings/n;


# direct methods
.method constructor <init>(Lcom/android/settings/n;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/settings/p;->O:Lcom/android/settings/n;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/p;->O:Lcom/android/settings/n;

    invoke-static {v0}, Lcom/android/settings/n;->a(Lcom/android/settings/n;)V

    .line 62
    return-void
.end method
