.class final Lcom/android/vendorsettings/applications/PermissionsSummaryHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "PermissionsSummaryHelper.java"


# instance fields
.field final synthetic KG:Lcom/android/vendorsettings/applications/PermissionsSummaryHelper$PermissionsResultCallback;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/applications/PermissionsSummaryHelper$PermissionsResultCallback;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/vendorsettings/applications/PermissionsSummaryHelper$1;->KG:Lcom/android/vendorsettings/applications/PermissionsSummaryHelper$PermissionsResultCallback;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 48
    const-string v0, "android.intent.extra.GET_PERMISSIONS_COUNT_RESULT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    .line 50
    const-string v1, "android.intent.extra.GET_PERMISSIONS_GROUP_LIST_RESULT"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getCharSequenceArrayExtra(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 53
    iget-object v2, p0, Lcom/android/vendorsettings/applications/PermissionsSummaryHelper$1;->KG:Lcom/android/vendorsettings/applications/PermissionsSummaryHelper$PermissionsResultCallback;

    invoke-interface {v2, v0, v1}, Lcom/android/vendorsettings/applications/PermissionsSummaryHelper$PermissionsResultCallback;->a([I[Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 56
    return-void
.end method
