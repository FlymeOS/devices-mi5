.class public final Lcom/android/settings/cloud/i;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final TH:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1348
    const-string v0, "content://com.android.settings.cloud.CloudSettings/cloud_app_control_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/cloud/i;->TH:Landroid/net/Uri;

    return-void
.end method
