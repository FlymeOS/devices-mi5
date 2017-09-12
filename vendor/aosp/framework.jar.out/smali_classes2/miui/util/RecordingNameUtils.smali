.class public Lmiui/util/RecordingNameUtils;
.super Ljava/lang/Object;
.source "RecordingNameUtils.java"


# static fields
.field private static final MAX_FILE_NAME_LENGTH:I = 0x32

.field private static final sDateFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/util/RecordingNameUtils;->sDateFormat:Ljava/text/SimpleDateFormat;

    .line 25
    sget-object v0, Lmiui/util/RecordingNameUtils;->sDateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generatCallRecordingName(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p3, "extension"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "callerNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "callerNumbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .local v5, "fileNameBuilder":Ljava/lang/StringBuilder;
    const v13, 0x11070072

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    rsub-int/lit8 v12, v13, 0x32

    .line 41
    .local v12, "remainLenth":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lmiui/util/RecordingNameUtils;->sDateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 42
    .local v11, "pendingInfo":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    sub-int/2addr v12, v13

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .local v2, "callerBuilder":Ljava/lang/StringBuilder;
    const/16 v4, 0x40

    .line 46
    .local v4, "delimiter":C
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 47
    .local v1, "c":Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    const/16 v4, 0x5f

    .line 49
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 52
    .end local v1    # "c":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    sub-int v10, v12, v13

    .line 53
    .local v10, "nameLength":I
    const/4 v8, 0x1

    .line 55
    .local v8, "lastPos":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    if-ge v6, v13, :cond_4

    const/4 v13, 0x2

    if-le v10, v13, :cond_4

    .line 56
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 57
    .local v9, "name":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v14, v10, -0x2

    if-le v13, v14, :cond_1

    .line 58
    const/4 v13, 0x0

    add-int/lit8 v14, v10, -0x2

    invoke-virtual {v9, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 60
    :cond_1
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 61
    const-string v13, "_"

    add-int/lit8 v14, v8, 0x1

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v13

    add-int/lit8 v8, v13, 0x1

    .line 55
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 63
    :cond_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v8, v13}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const-string v13, "_"

    add-int/lit8 v14, v8, 0x1

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v8

    .line 65
    if-gez v8, :cond_3

    .line 66
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    .line 68
    :cond_3
    const/16 v13, 0x29

    invoke-virtual {v2, v8, v13}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 69
    add-int/lit8 v8, v8, 0x2

    .line 70
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    sub-int/2addr v10, v13

    .line 71
    add-int/lit8 v10, v10, -0x2

    goto :goto_2

    .line 75
    .end local v9    # "name":Ljava/lang/String;
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    if-ge v12, v13, :cond_5

    move v3, v12

    .line 76
    .local v3, "callerLen":I
    :goto_3
    const/4 v13, 0x0

    invoke-virtual {v2, v13, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x2c

    const/16 v15, 0x70

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v13

    const-string v14, "+"

    const-string v15, "00"

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x2a

    const/16 v15, 0x73

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v13

    return-object v13

    .line 75
    .end local v3    # "callerLen":I
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    goto :goto_3
.end method

.method public static generatFMRecordName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fmTitle"    # Ljava/lang/String;
    .param p2, "extension"    # Ljava/lang/String;

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .local v0, "fileNameBuilder":Ljava/lang/StringBuilder;
    const v1, 0x11070078

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lmiui/util/RecordingNameUtils;->sDateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getCallRecordingCallerNumbers(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 174
    invoke-static {p1}, Lmiui/util/RecordingNameUtils;->getRecordingFileTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "title":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 176
    invoke-static {p0, v0}, Lmiui/util/RecordingNameUtils;->getPhoneNumbers(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 178
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getCallRecordingTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 156
    invoke-static {p1}, Lmiui/util/RecordingNameUtils;->getRecordingFileTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, "title":Ljava/lang/String;
    const/16 v3, 0x40

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 158
    .local v1, "index":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v1, v3, :cond_0

    if-eqz v2, :cond_0

    .line 159
    invoke-static {p0, v2}, Lmiui/util/RecordingNameUtils;->getCallers(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "callers":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 162
    .end local v0    # "callers":Ljava/lang/String;
    .end local v2    # "title":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .restart local v0    # "callers":Ljava/lang/String;
    .restart local v2    # "title":Ljava/lang/String;
    :cond_1
    move-object v2, v0

    .line 160
    goto :goto_0
.end method

.method private static getCallerString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/16 v13, 0x20

    const/4 v2, 0x0

    .line 215
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .local v7, "caller":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 217
    :cond_0
    const v0, 0x11070097

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    :goto_0
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_6

    move-object v12, p1

    .local v12, "ret":Ljava/lang/String;
    :goto_1
    move-object p1, v12

    .line 246
    .end local v12    # "ret":Ljava/lang/String;
    .end local p1    # "number":Ljava/lang/String;
    :cond_1
    return-object p1

    .line 219
    .restart local p1    # "number":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 222
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 226
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 227
    .local v11, "nameSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v0, "display_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 228
    .local v10, "nameIndex":I
    const/4 v8, 0x1

    .line 229
    .local v8, "first":Z
    :cond_3
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 230
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 231
    .local v9, "name":Ljava/lang/String;
    invoke-virtual {v11, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 232
    if-nez v8, :cond_4

    .line 233
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 234
    const v0, 0x11070073

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 237
    :cond_4
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    const/4 v8, 0x0

    .line 239
    invoke-virtual {v11, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 242
    .end local v9    # "name":Ljava/lang/String;
    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 245
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v8    # "first":Z
    .end local v10    # "nameIndex":I
    .end local v11    # "nameSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_6
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_1
.end method

.method private static getCallers(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 183
    invoke-static {p0, p1}, Lmiui/util/RecordingNameUtils;->getPhoneNumbers(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, "numbers":[Ljava/lang/String;
    array-length v3, v1

    if-nez v3, :cond_0

    .line 185
    const/4 v3, 0x0

    .line 196
    :goto_0
    return-object v3

    .line 188
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_2

    .line 190
    aget-object v3, v1, v0

    invoke-static {p0, v3}, Lmiui/util/RecordingNameUtils;->getCallerString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    if-eq v0, v3, :cond_1

    .line 192
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 196
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static getFMRecordingTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 143
    invoke-static {p0}, Lmiui/util/RecordingNameUtils;->getRecordingFileTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 101
    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 102
    .local v0, "index":I
    const/4 v1, 0x0

    .line 103
    .local v1, "name":Ljava/lang/String;
    if-eq v0, v3, :cond_1

    .line 104
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 108
    :goto_0
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 109
    if-eq v0, v3, :cond_0

    .line 110
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 112
    :cond_0
    return-object v1

    .line 106
    :cond_1
    move-object v1, p0

    goto :goto_0
.end method

.method private static getPhoneNumbers(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 200
    const/16 v4, 0x70

    const/16 v5, 0x2c

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x73

    const/16 v6, 0x2a

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 202
    .local v3, "numbers":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 203
    aget-object v4, v3, v0

    const/16 v5, 0x28

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 204
    .local v1, "indexOfBeginParenthesis":I
    aget-object v4, v3, v0

    const/16 v5, 0x29

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 205
    .local v2, "indexOfEndParenthesis":I
    if-lez v1, :cond_0

    if-le v2, v1, :cond_0

    .line 206
    aget-object v4, v3, v0

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 202
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 210
    .end local v1    # "indexOfBeginParenthesis":I
    .end local v2    # "indexOfEndParenthesis":I
    :cond_1
    return-object v3
.end method

.method public static getRecordingCreationTime(Landroid/content/Context;Ljava/lang/String;)J
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 257
    const-wide/16 v2, 0x0

    .line 258
    .local v2, "result":J
    invoke-static {p1}, Lmiui/util/RecordingNameUtils;->getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 259
    const/16 v4, 0x5f

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 260
    .local v1, "startIndex":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 261
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 264
    :cond_0
    :try_start_0
    sget-object v4, Lmiui/util/RecordingNameUtils;->sDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 265
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 268
    .end local v0    # "date":Ljava/util/Date;
    :goto_0
    return-wide v2

    .line 266
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static getRecordingFileTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 122
    const/16 v2, 0x40

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 123
    .local v1, "index":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_1

    .line 124
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 126
    const/16 v2, 0x5f

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 127
    .local v0, "endpos":I
    if-le v0, v1, :cond_0

    .line 128
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 130
    :cond_0
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 133
    .end local v0    # "endpos":I
    .end local p0    # "name":Ljava/lang/String;
    :cond_1
    return-object p0
.end method
