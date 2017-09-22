.class public final Lcom/android/settings/cloud/push/c;
.super Ljava/lang/Object;
.source "CloudEntity.java"

# interfaces
.implements Lcom/android/settings/cloud/push/b;


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "content://com.android.settings.cloud.compatibility.exist/uninstall"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/cloud/push/c;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
