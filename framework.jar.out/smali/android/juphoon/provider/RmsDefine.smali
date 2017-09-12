.class public Landroid/juphoon/provider/RmsDefine;
.super Ljava/lang/Object;
.source "RmsDefine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/juphoon/provider/RmsDefine$CallLogBlack;,
        Landroid/juphoon/provider/RmsDefine$Blacklist;,
        Landroid/juphoon/provider/RmsDefine$Capability;,
        Landroid/juphoon/provider/RmsDefine$Numbers;,
        Landroid/juphoon/provider/RmsDefine$ProfileQrcard;,
        Landroid/juphoon/provider/RmsDefine$ProfilePcc;,
        Landroid/juphoon/provider/RmsDefine$ProfileAccounts;,
        Landroid/juphoon/provider/RmsDefine$Menus;,
        Landroid/juphoon/provider/RmsDefine$Pas;,
        Landroid/juphoon/provider/RmsDefine$GroupChatMembers;,
        Landroid/juphoon/provider/RmsDefine$RmsGroupNotification;,
        Landroid/juphoon/provider/RmsDefine$RmsGroup;,
        Landroid/juphoon/provider/RmsDefine$TextBasedRmsGroupColumns;,
        Landroid/juphoon/provider/RmsDefine$Rms;,
        Landroid/juphoon/provider/RmsDefine$TextBasedRmsColumns;,
        Landroid/juphoon/provider/RmsDefine$Threads;,
        Landroid/juphoon/provider/RmsDefine$Favorites;
    }
.end annotation


# static fields
.field public static final BROADCAST_THREAD:I = 0x1

.field public static final COMMON_THREAD:I = 0x0

.field public static final FAVORITES_FILE_PATH:Ljava/lang/String;

.field public static final PC_ADDRESS:Ljava/lang/String; = "rcs_pc@rcs.xiaomi.com"

.field public static final RCS_GROUP_AUTHORITY:Ljava/lang/String; = "rcsgroup"

.field public static final REPOORT_PHONE:Ljava/lang/String; = "100869999"

.field public static final RMS_AUTHORITY:Ljava/lang/String; = "rms"

.field public static final RMS_FILE_PATH:Ljava/lang/String;

.field public static final RMS_GROUP_THREAD:I = 0x2

.field public static final RMS_PUBLIC_THREAD:I = 0x3

.field public static final RMS_TEMP_FILE_PATH:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Rcs/rmsfiles"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/juphoon/provider/RmsDefine;->RMS_FILE_PATH:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Rcs/favoritefiles"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/juphoon/provider/RmsDefine;->FAVORITES_FILE_PATH:Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Rcs/temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/juphoon/provider/RmsDefine;->RMS_TEMP_FILE_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 595
    return-void
.end method
