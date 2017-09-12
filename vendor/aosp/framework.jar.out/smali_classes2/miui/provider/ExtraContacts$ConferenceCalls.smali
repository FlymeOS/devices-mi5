.class public final Lmiui/provider/ExtraContacts$ConferenceCalls;
.super Ljava/lang/Object;
.source "ExtraContacts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/ExtraContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConferenceCalls"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/provider/ExtraContacts$ConferenceCalls$MembersColumns;,
        Lmiui/provider/ExtraContacts$ConferenceCalls$ConferenceColumns;,
        Lmiui/provider/ExtraContacts$ConferenceCalls$CallsColumns;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "conference_calls"

.field public static final AUTHORITY_URI:Landroid/net/Uri;

.field public static final LIMIT_PARAM_KEY:Ljava/lang/String; = "limit"

.field public static final OFFSET_PARAM_KEY:Ljava/lang/String; = "offset"

.field public static final SPLIT_EXPRESSION:Ljava/lang/String; = ";"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1394
    const-string v0, "content://conference_calls"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraContacts$ConferenceCalls;->AUTHORITY_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1490
    return-void
.end method

.method public static addConferenceCall(Landroid/content/Context;Ljava/util/ArrayList;IJIIJJ)Landroid/net/Uri;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "callType"    # I
    .param p3, "start"    # J
    .param p5, "duration"    # I
    .param p6, "forwardedCall"    # I
    .param p7, "simInfoId"    # J
    .param p9, "phoneCallType"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;IJIIJJ)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .prologue
    .line 1523
    .local p1, "numberList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v12, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    invoke-static/range {v1 .. v12}, Lmiui/provider/ExtraContacts$ConferenceCalls;->addConferenceCall(Landroid/content/Context;Ljava/util/ArrayList;IJIIJJZ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addConferenceCall(Landroid/content/Context;Ljava/util/ArrayList;IJIIJJZ)Landroid/net/Uri;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "callType"    # I
    .param p3, "start"    # J
    .param p5, "duration"    # I
    .param p6, "forwardedCall"    # I
    .param p7, "simInfoId"    # J
    .param p9, "phoneCallType"    # J
    .param p11, "addForAllUsers"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;IJIIJJZ)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .prologue
    .line 1530
    .local p1, "numberList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p1}, Lmiui/provider/ExtraContacts$ConferenceCalls;->computeConferenceCallNumber(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    .line 1532
    .local v1, "conferenceCallNumber":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1533
    .local v2, "contentResolver":Landroid/content/ContentResolver;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1534
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "number"

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1535
    const-string v4, "type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1536
    const-string v4, "date"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1537
    const-string v4, "duration"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1538
    const-string v4, "forwarded_call"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1539
    const-string v4, "simid"

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1540
    const-string v4, "phone_call_type"

    invoke-static/range {p9 .. p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1541
    const-string v4, "isSponsor"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1542
    const-string v5, "isSponsor"

    const/4 v4, 0x2

    if-ne p2, v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1545
    :cond_0
    sget-object v4, Lmiui/provider/ExtraContacts$ConferenceCalls$CallsColumns;->CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, p11

    invoke-static {p0, v4, v3, v0}, Lmiui/provider/ExtraContacts;->addCall(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Z)Landroid/net/Uri;

    move-result-object v4

    return-object v4

    .line 1542
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private static computeConferenceCallNumber(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1549
    .local p0, "numbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1550
    const-string v0, ";"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
