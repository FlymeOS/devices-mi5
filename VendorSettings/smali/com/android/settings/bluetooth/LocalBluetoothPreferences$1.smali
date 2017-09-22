.class final Lcom/android/vendorsettings/bluetooth/LocalBluetoothPreferences$1;
.super Ljava/lang/Object;
.source "LocalBluetoothPreferences.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/vendorsettings/bluetooth/LocalBluetoothPreferences$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/LocalBluetoothPreferences$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/vendorsettings/bluetooth/LocalBluetoothPreferences;->aw(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 143
    const-string v1, "last_discovering_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 146
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 147
    return-void
.end method
