.class Lcom/android/vendorsettings/dndmode/d;
.super Ljava/lang/Object;
.source "AlarmContentFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic aaj:Lcom/android/vendorsettings/dndmode/c;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/dndmode/c;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/vendorsettings/dndmode/d;->aaj:Lcom/android/vendorsettings/dndmode/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 56
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 57
    iget-object v1, p0, Lcom/android/vendorsettings/dndmode/d;->aaj:Lcom/android/vendorsettings/dndmode/c;

    invoke-static {v1}, Lcom/android/vendorsettings/dndmode/c;->a(Lcom/android/vendorsettings/dndmode/c;)Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-ne v0, v1, :cond_0

    .line 58
    const/4 v0, 0x1

    .line 63
    :goto_0
    return v0

    .line 60
    :cond_0
    const-string v1, "ZenModeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrefChange allowCalls="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v1, p0, Lcom/android/vendorsettings/dndmode/d;->aaj:Lcom/android/vendorsettings/dndmode/c;

    invoke-static {v1}, Lcom/android/vendorsettings/dndmode/c;->a(Lcom/android/vendorsettings/dndmode/c;)Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    .line 62
    iput-boolean v0, v1, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    .line 63
    iget-object v0, p0, Lcom/android/vendorsettings/dndmode/d;->aaj:Lcom/android/vendorsettings/dndmode/c;

    invoke-virtual {v0}, Lcom/android/vendorsettings/dndmode/c;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/app/ExtraNotificationManager;->setZenModeConfig(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;)Z

    move-result v0

    goto :goto_0
.end method
