.class public final Lcom/android/vendorsettings/cloud/push/e;
.super Ljava/lang/Object;
.source "CloudEntity.java"

# interfaces
.implements Lcom/android/vendorsettings/cloud/push/b;


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    const-string v0, "content://com.android.settings.cloud.compatibility.running/running"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/vendorsettings/cloud/push/e;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
