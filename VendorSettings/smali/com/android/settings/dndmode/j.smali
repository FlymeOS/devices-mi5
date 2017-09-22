.class Lcom/android/settings/dndmode/j;
.super Landroid/database/ContentObserver;
.source "AutoTimeSettingsFragment.java"


# instance fields
.field final synthetic aau:Lcom/android/settings/dndmode/h;


# direct methods
.method constructor <init>(Lcom/android/settings/dndmode/h;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/settings/dndmode/j;->aau:Lcom/android/settings/dndmode/h;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings/dndmode/j;->aau:Lcom/android/settings/dndmode/h;

    invoke-static {v0}, Lcom/android/settings/dndmode/h;->g(Lcom/android/settings/dndmode/h;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dndmode/j;->aau:Lcom/android/settings/dndmode/h;

    invoke-static {v1}, Lcom/android/settings/dndmode/h;->b(Lcom/android/settings/dndmode/h;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/MiuiSettings$AntiSpam;->isQuietWristband(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 78
    return-void
.end method
