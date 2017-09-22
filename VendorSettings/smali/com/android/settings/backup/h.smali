.class public Lcom/android/settings/backup/h;
.super Ljava/lang/Object;
.source "Customization.java"


# static fields
.field public static final PM:[Lcom/android/settings/backup/A;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 15
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/settings/backup/A;

    new-instance v1, Lcom/android/settings/backup/A;

    const-string v2, ""

    const-string v3, "gesture.key"

    const-string v4, "/data/system/gesture.key"

    invoke-direct {v1, v2, v3, v4, v6}, Lcom/android/settings/backup/A;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v1, v0, v6

    const/4 v1, 0x1

    new-instance v2, Lcom/android/settings/backup/A;

    const-string v3, ""

    const-string v4, "password.key"

    const-string v5, "/data/system/password.key"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/settings/backup/A;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/android/settings/backup/A;

    const-string v3, ""

    const-string v4, "password.key"

    const-string v5, "/data/system/password.key"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/settings/backup/A;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/android/settings/backup/A;

    const-string v3, ""

    const-string v4, "netpolicy.xml"

    const-string v5, "/data/system/netpolicy.xml"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/settings/backup/A;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/android/settings/backup/A;

    const-string v3, ""

    const-string v4, "netstats.bin"

    const-string v5, "/data/system/netstats.bin"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/settings/backup/A;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/android/settings/backup/A;

    const-string v3, ""

    const-string v4, "netstats_uid.bin"

    const-string v5, "/data/system/netstats_uid.bin"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/settings/backup/A;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/android/settings/backup/A;

    const-string v3, ""

    const-string v4, "netstats_xt.bin"

    const-string v5, "/data/system/netstats_xt.bin"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/settings/backup/A;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/android/settings/backup/A;

    const-string v3, ""

    const-string v4, "access_control.key"

    const-string v5, "/data/system/access_control.key"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/settings/backup/A;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/backup/h;->PM:[Lcom/android/settings/backup/A;

    return-void
.end method
