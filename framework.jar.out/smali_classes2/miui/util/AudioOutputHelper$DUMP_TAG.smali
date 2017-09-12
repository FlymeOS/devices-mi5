.class Lmiui/util/AudioOutputHelper$DUMP_TAG;
.super Ljava/lang/Object;
.source "AudioOutputHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/AudioOutputHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DUMP_TAG"
.end annotation


# static fields
.field public static final PID_GRP_IDX:I = 0x2

.field public static final SESSIONS_CONTENT_FINDER:Ljava/util/regex/Pattern;

.field public static final SESSIONS_HEAD_FINDER:Ljava/util/regex/Pattern;

.field public static final SESSION_GRP_IDX:I = 0x1

.field public static final STANDBY_FINDER:Ljava/util/regex/Pattern;

.field public static final STANDBY_GRP_IDX:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-string v0, "^[\\s]+session[\\s]+pid[\\s]+(cnt|count)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmiui/util/AudioOutputHelper$DUMP_TAG;->SESSIONS_HEAD_FINDER:Ljava/util/regex/Pattern;

    .line 62
    const-string v0, "^\\s+(\\d+)\\s+(\\d+)\\s+\\d+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmiui/util/AudioOutputHelper$DUMP_TAG;->SESSIONS_CONTENT_FINDER:Ljava/util/regex/Pattern;

    .line 68
    const-string v0, "^[\\s]*[s|S]tandby: (\\w+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmiui/util/AudioOutputHelper$DUMP_TAG;->STANDBY_FINDER:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
