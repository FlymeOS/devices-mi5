.class Lcom/android/settings/en;
.super Landroid/database/ContentObserver;
.source "MiuiDisplaySettings.java"


# instance fields
.field final synthetic qH:Lcom/android/settings/MiuiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiDisplaySettings;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/settings/en;->qH:Lcom/android/settings/MiuiDisplaySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/settings/en;->qH:Lcom/android/settings/MiuiDisplaySettings;

    invoke-static {v0}, Lcom/android/settings/MiuiDisplaySettings;->a(Lcom/android/settings/MiuiDisplaySettings;)V

    .line 135
    return-void
.end method
