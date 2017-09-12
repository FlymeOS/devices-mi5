.class public Lmiui/provider/ExtraContacts$T9Query;
.super Ljava/lang/Object;
.source "ExtraContacts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/ExtraContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "T9Query"
.end annotation


# static fields
.field public static final CLOUD_ANTISPAM_TYPE:I = 0x14

.field public static final CLOUD_ANTISPAM_TYPE_TAG:I = 0x15

.field public static final COLUMNS:[Ljava/lang/String;

.field public static final COLUMNS_WITH_CONFERENCE:[Ljava/lang/String;

.field public static final CONFERENCE_ID:I = 0x1c

.field public static final CONFERENCE_MEMBERS_NAME:I = 0x1e

.field public static final CONFERENCE_NAME:I = 0x1d

.field public static final CONTACT_ID:I = 0x1

.field public static final COUNT:I = 0x5

.field public static final COUNTRY_ISO:I = 0x10

.field public static final CREDIT_IMG:I = 0x1b

.field public static final DATA_ID:I = 0x13

.field public static final DATA_TAG:I = 0x16

.field public static final DATE:I = 0x8

.field public static final DURATION:I = 0x9

.field public static final FEATURES:I = 0x1a

.field public static final FIREWALL_TYPE:I = 0xd

.field public static final FORWARDED_CALL:I = 0xe

.field public static final MISSED_COUNT:I = 0xa

.field public static final NAME:I = 0x2

.field public static final NEW:I = 0x6

.field public static final NORMALIZED_NUMBER:I = 0x12

.field public static final NUMBER:I = 0x3

.field public static final NUMBER_TYPE:I = 0x17

.field public static final PHONE_CALL_TYPE:I = 0x19

.field public static final PHOTO_ID:I = 0x4

.field public static final SIM_ID:I = 0x18

.field public static final T9DISPLAY_STRING:I = 0xf

.field public static final T9KEY_TYPE:I = 0xb

.field public static final T9MATCH_DETAIL:I = 0xc

.field public static final TYPE:I = 0x7

.field public static final VOICEMAIL_URI:I = 0x11

.field public static final _ID:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 122
    const/16 v0, 0x1c

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "contact_id"

    aput-object v1, v0, v4

    const-string v1, "name"

    aput-object v1, v0, v5

    const-string v1, "number"

    aput-object v1, v0, v6

    const-string v1, "photo_id"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "call_count"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "is_new"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "call_type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "call_date"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "call_duration"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "missed_count"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "key_type"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "match_detail"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "firewall_type"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "forwarded_call"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "display_string"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "country_iso"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "voicemail_uri"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "normalized_number"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "data_id"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "cloud_antispam_type"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "cloud_antispam_type_tag"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "data_tag"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "number_type"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "sim_id"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "phone_call_type"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "features"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "credit_img"

    aput-object v2, v0, v1

    sput-object v0, Lmiui/provider/ExtraContacts$T9Query;->COLUMNS:[Ljava/lang/String;

    .line 137
    const/16 v0, 0x1f

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "contact_id"

    aput-object v1, v0, v4

    const-string v1, "name"

    aput-object v1, v0, v5

    const-string v1, "number"

    aput-object v1, v0, v6

    const-string v1, "photo_id"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "call_count"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "is_new"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "call_type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "call_date"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "call_duration"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "missed_count"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "key_type"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "match_detail"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "firewall_type"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "forwarded_call"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "display_string"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "country_iso"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "voicemail_uri"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "normalized_number"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "data_id"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "cloud_antispam_type"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "cloud_antispam_type_tag"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "data_tag"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "number_type"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "sim_id"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "phone_call_type"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "features"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "credit_img"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "conference_id"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "conference_name"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "conference_members_name"

    aput-object v2, v0, v1

    sput-object v0, Lmiui/provider/ExtraContacts$T9Query;->COLUMNS_WITH_CONFERENCE:[Ljava/lang/String;

    .line 149
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
