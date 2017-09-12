.class public final Landroid/media/AudioAttributes;
.super Ljava/lang/Object;
.source "AudioAttributes.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioAttributes$Builder;
    }
.end annotation


# static fields
.field private static final ALL_PARCEL_FLAGS:I = 0x1

.field public static final CONTENT_TYPE_MOVIE:I = 0x3

.field public static final CONTENT_TYPE_MUSIC:I = 0x2

.field public static final CONTENT_TYPE_SONIFICATION:I = 0x4

.field public static final CONTENT_TYPE_SPEECH:I = 0x1

.field public static final CONTENT_TYPE_UNKNOWN:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/AudioAttributes;",
            ">;"
        }
    .end annotation
.end field

.field private static final FLAG_ALL:I = 0xff

.field private static final FLAG_ALL_PUBLIC:I = 0x11

.field public static final FLAG_AUDIBILITY_ENFORCED:I = 0x1

.field public static final FLAG_BEACON:I = 0x8

.field public static final FLAG_BYPASS_INTERRUPTION_POLICY:I = 0x40

.field public static final FLAG_BYPASS_MUTE:I = 0x80

.field public static final FLAG_HW_AV_SYNC:I = 0x10

.field public static final FLAG_HW_HOTWORD:I = 0x20

.field public static final FLAG_SCO:I = 0x4

.field public static final FLAG_SECURE:I = 0x2

.field public static final FLATTEN_TAGS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AudioAttributes"

.field public static final USAGE_ALARM:I = 0x4

.field public static final USAGE_ASSISTANCE_ACCESSIBILITY:I = 0xb

.field public static final USAGE_ASSISTANCE_NAVIGATION_GUIDANCE:I = 0xc

.field public static final USAGE_ASSISTANCE_SONIFICATION:I = 0xd

.field public static final USAGE_GAME:I = 0xe

.field public static final USAGE_MEDIA:I = 0x1

.field public static final USAGE_NOTIFICATION:I = 0x5

.field public static final USAGE_NOTIFICATION_COMMUNICATION_DELAYED:I = 0x9

.field public static final USAGE_NOTIFICATION_COMMUNICATION_INSTANT:I = 0x8

.field public static final USAGE_NOTIFICATION_COMMUNICATION_REQUEST:I = 0x7

.field public static final USAGE_NOTIFICATION_EVENT:I = 0xa

.field public static final USAGE_NOTIFICATION_RINGTONE:I = 0x6

.field public static final USAGE_UNKNOWN:I = 0x0

.field public static final USAGE_VIRTUAL_SOURCE:I = 0xf

.field public static final USAGE_VOICE_COMMUNICATION:I = 0x2

.field public static final USAGE_VOICE_COMMUNICATION_SIGNALLING:I = 0x3


# instance fields
.field private mContentType:I

.field private mFlags:I

.field private mFormattedTags:Ljava/lang/String;

.field private mSource:I

.field private mTags:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUsage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 619
    new-instance v0, Landroid/media/AudioAttributes$1;

    invoke-direct {v0}, Landroid/media/AudioAttributes$1;-><init>()V

    sput-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput v1, p0, Landroid/media/AudioAttributes;->mUsage:I

    .line 232
    iput v1, p0, Landroid/media/AudioAttributes;->mContentType:I

    .line 233
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/AudioAttributes;->mSource:I

    .line 234
    iput v1, p0, Landroid/media/AudioAttributes;->mFlags:I

    .line 239
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioAttributes$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/media/AudioAttributes$1;

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/media/AudioAttributes;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 600
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput v3, p0, Landroid/media/AudioAttributes;->mUsage:I

    .line 232
    iput v3, p0, Landroid/media/AudioAttributes;->mContentType:I

    .line 233
    const/4 v4, -0x1

    iput v4, p0, Landroid/media/AudioAttributes;->mSource:I

    .line 234
    iput v3, p0, Landroid/media/AudioAttributes;->mFlags:I

    .line 601
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Landroid/media/AudioAttributes;->mUsage:I

    .line 602
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Landroid/media/AudioAttributes;->mContentType:I

    .line 603
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Landroid/media/AudioAttributes;->mSource:I

    .line 604
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Landroid/media/AudioAttributes;->mFlags:I

    .line 605
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v0, :cond_0

    .line 606
    .local v0, "hasFlattenedTags":Z
    :goto_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    .line 607
    if-eqz v0, :cond_1

    .line 608
    new-instance v3, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    .line 609
    iget-object v3, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    iget-object v4, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 617
    :goto_1
    return-void

    .end local v0    # "hasFlattenedTags":Z
    :cond_0
    move v0, v3

    .line 605
    goto :goto_0

    .line 611
    .restart local v0    # "hasFlattenedTags":Z
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 612
    .local v2, "tagsArray":[Ljava/lang/String;
    array-length v3, v2

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_2
    if-ltz v1, :cond_2

    .line 613
    iget-object v3, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    aget-object v4, v2, v1

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 612
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 615
    :cond_2
    const-string v3, ";"

    iget-object v4, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/media/AudioAttributes$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/media/AudioAttributes$1;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/media/AudioAttributes;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic access$000(Landroid/media/AudioAttributes;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioAttributes;

    .prologue
    .line 66
    iget v0, p0, Landroid/media/AudioAttributes;->mUsage:I

    return v0
.end method

.method static synthetic access$002(Landroid/media/AudioAttributes;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioAttributes;
    .param p1, "x1"    # I

    .prologue
    .line 66
    iput p1, p0, Landroid/media/AudioAttributes;->mUsage:I

    return p1
.end method

.method static synthetic access$100(Landroid/media/AudioAttributes;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioAttributes;

    .prologue
    .line 66
    iget v0, p0, Landroid/media/AudioAttributes;->mContentType:I

    return v0
.end method

.method static synthetic access$102(Landroid/media/AudioAttributes;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioAttributes;
    .param p1, "x1"    # I

    .prologue
    .line 66
    iput p1, p0, Landroid/media/AudioAttributes;->mContentType:I

    return p1
.end method

.method static synthetic access$200(Landroid/media/AudioAttributes;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioAttributes;

    .prologue
    .line 66
    iget v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    return v0
.end method

.method static synthetic access$202(Landroid/media/AudioAttributes;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioAttributes;
    .param p1, "x1"    # I

    .prologue
    .line 66
    iput p1, p0, Landroid/media/AudioAttributes;->mFlags:I

    return p1
.end method

.method static synthetic access$300(Landroid/media/AudioAttributes;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioAttributes;

    .prologue
    .line 66
    iget-object v0, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$302(Landroid/media/AudioAttributes;Ljava/util/HashSet;)Ljava/util/HashSet;
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioAttributes;
    .param p1, "x1"    # Ljava/util/HashSet;

    .prologue
    .line 66
    iput-object p1, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    return-object p1
.end method

.method static synthetic access$502(Landroid/media/AudioAttributes;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioAttributes;
    .param p1, "x1"    # I

    .prologue
    .line 66
    iput p1, p0, Landroid/media/AudioAttributes;->mSource:I

    return p1
.end method

.method static synthetic access$602(Landroid/media/AudioAttributes;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioAttributes;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    return-object p1
.end method

.method public static getVolumeControlStream(Landroid/media/AudioAttributes;)I
    .locals 2
    .param p0, "aa"    # Landroid/media/AudioAttributes;

    .prologue
    .line 747
    if-nez p0, :cond_0

    .line 748
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid null audio attributes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 750
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0, p0}, Landroid/media/AudioAttributes;->toVolumeStreamType(ZLandroid/media/AudioAttributes;)I

    move-result v0

    return v0
.end method

.method public static toLegacyStreamType(Landroid/media/AudioAttributes;)I
    .locals 1
    .param p0, "aa"    # Landroid/media/AudioAttributes;

    .prologue
    .line 761
    const/4 v0, 0x0

    invoke-static {v0, p0}, Landroid/media/AudioAttributes;->toVolumeStreamType(ZLandroid/media/AudioAttributes;)I

    move-result v0

    return v0
.end method

.method private static toVolumeStreamType(ZLandroid/media/AudioAttributes;)I
    .locals 5
    .param p0, "fromGetVolumeControlStream"    # Z
    .param p1, "aa"    # Landroid/media/AudioAttributes;

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 766
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v0, :cond_1

    .line 767
    if-eqz p0, :cond_0

    .line 807
    :goto_0
    :pswitch_0
    return v0

    .line 767
    :cond_0
    const/4 v0, 0x7

    goto :goto_0

    .line 770
    :cond_1
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x4

    if-ne v4, v3, :cond_3

    .line 771
    if-eqz p0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    goto :goto_0

    .line 776
    :cond_3
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 803
    if-eqz p0, :cond_6

    .line 804
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown usage value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in audio attributes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    move v0, v2

    .line 781
    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 785
    goto :goto_0

    .line 787
    :pswitch_3
    if-eqz p0, :cond_4

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_4
    const/16 v1, 0x8

    goto :goto_1

    :pswitch_4
    move v0, v3

    .line 790
    goto :goto_0

    .line 792
    :pswitch_5
    const/4 v0, 0x2

    goto :goto_0

    .line 798
    :pswitch_6
    const/4 v0, 0x5

    goto :goto_0

    .line 800
    :pswitch_7
    if-eqz p0, :cond_5

    const/high16 v0, -0x80000000

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_0

    :cond_6
    move v0, v2

    .line 807
    goto :goto_0

    .line 776
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static usageForLegacyStreamType(I)I
    .locals 1
    .param p0, "streamType"    # I

    .prologue
    const/4 v0, 0x2

    .line 708
    packed-switch p0, :pswitch_data_0

    .line 729
    const/4 v0, 0x0

    :goto_0
    :pswitch_0
    return v0

    .line 713
    :pswitch_1
    const/16 v0, 0xd

    goto :goto_0

    .line 715
    :pswitch_2
    const/4 v0, 0x6

    goto :goto_0

    .line 717
    :pswitch_3
    const/4 v0, 0x1

    goto :goto_0

    .line 719
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 721
    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 725
    :pswitch_6
    const/4 v0, 0x3

    goto :goto_0

    .line 727
    :pswitch_7
    const/16 v0, 0xb

    goto :goto_0

    .line 708
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static usageToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "usage"    # I

    .prologue
    .line 670
    packed-switch p0, :pswitch_data_0

    .line 702
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown usage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    .line 672
    :pswitch_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "USAGE_UNKNOWN"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 674
    :pswitch_1
    new-instance v0, Ljava/lang/String;

    const-string v1, "USAGE_MEDIA"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 676
    :pswitch_2
    new-instance v0, Ljava/lang/String;

    const-string v1, "USAGE_VOICE_COMMUNICATION"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 678
    :pswitch_3
    new-instance v0, Ljava/lang/String;

    const-string v1, "USAGE_VOICE_COMMUNICATION"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 680
    :pswitch_4
    new-instance v0, Ljava/lang/String;

    const-string v1, "USAGE_ALARM"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 682
    :pswitch_5
    new-instance v0, Ljava/lang/String;

    const-string v1, "USAGE_NOTIFICATION"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 684
    :pswitch_6
    new-instance v0, Ljava/lang/String;

    const-string v1, "USAGE_NOTIFICATION"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 686
    :pswitch_7
    new-instance v0, Ljava/lang/String;

    const-string v1, "USAGE_NOTIFICATION"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 688
    :pswitch_8
    new-instance v0, Ljava/lang/String;

    const-string v1, "USAGE_NOTIFICATION_COMMUNICATION_INSTANT"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 690
    :pswitch_9
    new-instance v0, Ljava/lang/String;

    const-string v1, "USAGE_NOTIFICATION_COMMUNICATION_DELAYED"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 692
    :pswitch_a
    new-instance v0, Ljava/lang/String;

    const-string v1, "USAGE_NOTIFICATION_EVENT"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 694
    :pswitch_b
    new-instance v0, Ljava/lang/String;

    const-string v1, "USAGE_ASSISTANCE_ACCESSIBILITY"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 696
    :pswitch_c
    new-instance v0, Ljava/lang/String;

    const-string v1, "USAGE_ASSISTANCE_NAVIGATION_GUIDANCE"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 698
    :pswitch_d
    new-instance v0, Ljava/lang/String;

    const-string v1, "USAGE_ASSISTANCE_SONIFICATION"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 700
    :pswitch_e
    new-instance v0, Ljava/lang/String;

    const-string v1, "USAGE_GAME"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 670
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 569
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 636
    if-ne p0, p1, :cond_1

    .line 641
    :cond_0
    :goto_0
    return v1

    .line 637
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 639
    check-cast v0, Landroid/media/AudioAttributes;

    .line 641
    .local v0, "that":Landroid/media/AudioAttributes;
    iget v3, p0, Landroid/media/AudioAttributes;->mContentType:I

    iget v4, v0, Landroid/media/AudioAttributes;->mContentType:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Landroid/media/AudioAttributes;->mFlags:I

    iget v4, v0, Landroid/media/AudioAttributes;->mFlags:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Landroid/media/AudioAttributes;->mSource:I

    iget v4, v0, Landroid/media/AudioAttributes;->mSource:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Landroid/media/AudioAttributes;->mUsage:I

    iget v4, v0, Landroid/media/AudioAttributes;->mUsage:I

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    iget-object v4, v0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getAllFlags()I
    .locals 1

    .prologue
    .line 285
    iget v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getCapturePreset()I
    .locals 1

    .prologue
    .line 265
    iget v0, p0, Landroid/media/AudioAttributes;->mSource:I

    return v0
.end method

.method public getContentType()I
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Landroid/media/AudioAttributes;->mContentType:I

    return v0
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 274
    iget v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    and-int/lit8 v0, v0, 0x11

    return v0
.end method

.method public getTags()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 294
    iget-object v0, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getUsage()I
    .locals 1

    .prologue
    .line 254
    iget v0, p0, Landroid/media/AudioAttributes;->mUsage:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 651
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Landroid/media/AudioAttributes;->mContentType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Landroid/media/AudioAttributes;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Landroid/media/AudioAttributes;->mSource:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Landroid/media/AudioAttributes;->mUsage:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 656
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioAttributes: usage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioAttributes;->mUsage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " content="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioAttributes;->mContentType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " flags=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioAttributes;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public usageToString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 665
    iget v0, p0, Landroid/media/AudioAttributes;->mUsage:I

    invoke-static {v0}, Landroid/media/AudioAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 586
    iget v1, p0, Landroid/media/AudioAttributes;->mUsage:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 587
    iget v1, p0, Landroid/media/AudioAttributes;->mContentType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 588
    iget v1, p0, Landroid/media/AudioAttributes;->mSource:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 589
    iget v1, p0, Landroid/media/AudioAttributes;->mFlags:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 590
    and-int/lit8 v1, p2, 0x1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 591
    and-int/lit8 v1, p2, 0x1

    if-nez v1, :cond_1

    .line 592
    iget-object v1, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    .line 593
    .local v0, "tagsArray":[Ljava/lang/String;
    iget-object v1, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 594
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 598
    .end local v0    # "tagsArray":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 595
    :cond_1
    and-int/lit8 v1, p2, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 596
    iget-object v1, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method
