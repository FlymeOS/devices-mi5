.class public final Landroid/juphoon/provider/RmsDefine$ProfilePcc;
.super Ljava/lang/Object;
.source "RmsDefine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/juphoon/provider/RmsDefine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProfilePcc"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/juphoon/provider/RmsDefine$ProfilePcc$Icon;,
        Landroid/juphoon/provider/RmsDefine$ProfilePcc$Career;,
        Landroid/juphoon/provider/RmsDefine$ProfilePcc$Birth;,
        Landroid/juphoon/provider/RmsDefine$ProfilePcc$URI;,
        Landroid/juphoon/provider/RmsDefine$ProfilePcc$Tel;,
        Landroid/juphoon/provider/RmsDefine$ProfilePcc$Address;,
        Landroid/juphoon/provider/RmsDefine$ProfilePcc$Name;
    }
.end annotation


# static fields
.field public static final ACCOUNT_ID:Ljava/lang/String; = "account_id"

.field public static final AUTHORITY:Ljava/lang/String; = "profile_pcc"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATA1:Ljava/lang/String; = "data1"

.field public static final DATA10:Ljava/lang/String; = "data10"

.field public static final DATA2:Ljava/lang/String; = "data2"

.field public static final DATA3:Ljava/lang/String; = "data3"

.field public static final DATA4:Ljava/lang/String; = "data4"

.field public static final DATA5:Ljava/lang/String; = "data5"

.field public static final DATA6:Ljava/lang/String; = "data6"

.field public static final DATA7:Ljava/lang/String; = "data7"

.field public static final DATA8:Ljava/lang/String; = "data8"

.field public static final DATA9:Ljava/lang/String; = "data9"

.field public static final PROP_TYPE:Ljava/lang/String; = "prop_type"

.field public static final PROP_TYPE_ADDR:I = 0x2

.field public static final PROP_TYPE_BIRTH:I = 0x5

.field public static final PROP_TYPE_CAREER:I = 0x6

.field public static final PROP_TYPE_ICON:I = 0x7

.field public static final PROP_TYPE_NAME:I = 0x1

.field public static final PROP_TYPE_TEL:I = 0x3

.field public static final PROP_TYPE_URI:I = 0x4

.field public static final TABLE_NAME:Ljava/lang/String; = "profile_pcc"

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 398
    const-string v0, "content://profile_pcc/profile_pcc"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/juphoon/provider/RmsDefine$ProfilePcc;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 517
    return-void
.end method
