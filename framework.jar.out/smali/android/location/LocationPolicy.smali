.class public Landroid/location/LocationPolicy;
.super Ljava/lang/Object;
.source "LocationPolicy.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/location/LocationPolicy;",
            ">;"
        }
    .end annotation
.end field

.field public static final MATCH_FUSED_PROVIDER:I = 0x3

.field public static final MATCH_GPS_PROVIDER:I = 0x2

.field public static final MATCH_NETWORK_PROVIDER:I = 0x1

.field public static final MATCH_PASSIVE_PROVIDER:I = 0x4


# instance fields
.field public final mHighCost:Z

.field private final mMatchRule:I

.field public final mMinIntervalMs:I

.field public final mProvider:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 167
    new-instance v0, Landroid/location/LocationPolicy$1;

    invoke-direct {v0}, Landroid/location/LocationPolicy$1;-><init>()V

    sput-object v0, Landroid/location/LocationPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 1
    .param p1, "matchRule"    # I
    .param p2, "provider"    # Ljava/lang/String;
    .param p3, "highcost"    # Z

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput p1, p0, Landroid/location/LocationPolicy;->mMatchRule:I

    .line 74
    iput-object p2, p0, Landroid/location/LocationPolicy;->mProvider:Ljava/lang/String;

    .line 75
    iput-boolean p3, p0, Landroid/location/LocationPolicy;->mHighCost:Z

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/LocationPolicy;->mMinIntervalMs:I

    .line 77
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ZI)V
    .locals 0
    .param p1, "matchRule"    # I
    .param p2, "provider"    # Ljava/lang/String;
    .param p3, "highcost"    # Z
    .param p4, "minIntervalMs"    # I

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput p1, p0, Landroid/location/LocationPolicy;->mMatchRule:I

    .line 81
    iput-object p2, p0, Landroid/location/LocationPolicy;->mProvider:Ljava/lang/String;

    .line 82
    iput-boolean p3, p0, Landroid/location/LocationPolicy;->mHighCost:Z

    .line 83
    iput p4, p0, Landroid/location/LocationPolicy;->mMinIntervalMs:I

    .line 84
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/location/LocationPolicy;->mMatchRule:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/location/LocationPolicy;->mProvider:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/location/LocationPolicy;->mHighCost:Z

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/location/LocationPolicy;->mMinIntervalMs:I

    .line 91
    return-void

    .line 89
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/location/LocationPolicy$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/location/LocationPolicy$1;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/location/LocationPolicy;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static buildDefaultPolicyFusedLocation()Landroid/location/LocationPolicy;
    .locals 4

    .prologue
    .line 38
    new-instance v0, Landroid/location/LocationPolicy;

    const/4 v1, 0x3

    const-string v2, "fused"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/location/LocationPolicy;-><init>(ILjava/lang/String;Z)V

    return-object v0
.end method

.method public static buildDefaultPolicyGPSLocation()Landroid/location/LocationPolicy;
    .locals 4

    .prologue
    .line 31
    new-instance v0, Landroid/location/LocationPolicy;

    const/4 v1, 0x2

    const-string/jumbo v2, "gps"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/location/LocationPolicy;-><init>(ILjava/lang/String;Z)V

    return-object v0
.end method

.method public static buildDefaultPolicyNetworkLocation()Landroid/location/LocationPolicy;
    .locals 4

    .prologue
    .line 24
    new-instance v0, Landroid/location/LocationPolicy;

    const/4 v1, 0x1

    const-string/jumbo v2, "network"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/location/LocationPolicy;-><init>(ILjava/lang/String;Z)V

    return-object v0
.end method

.method public static buildDefaultPolicyPassiveLocation()Landroid/location/LocationPolicy;
    .locals 4

    .prologue
    .line 45
    new-instance v0, Landroid/location/LocationPolicy;

    const/4 v1, 0x4

    const-string/jumbo v2, "passive"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/location/LocationPolicy;-><init>(ILjava/lang/String;Z)V

    return-object v0
.end method

.method public static getLocationPolicy(Ljava/lang/String;I)Landroid/location/LocationPolicy;
    .locals 5
    .param p0, "provider"    # Ljava/lang/String;
    .param p1, "minIntervalMs"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 50
    const-string/jumbo v0, "network"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    new-instance v0, Landroid/location/LocationPolicy;

    const-string/jumbo v1, "network"

    invoke-direct {v0, v3, v1, v4, p1}, Landroid/location/LocationPolicy;-><init>(ILjava/lang/String;ZI)V

    .line 60
    :goto_0
    return-object v0

    .line 53
    :cond_0
    const-string/jumbo v0, "gps"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    new-instance v0, Landroid/location/LocationPolicy;

    const/4 v1, 0x2

    const-string/jumbo v2, "gps"

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/location/LocationPolicy;-><init>(ILjava/lang/String;ZI)V

    goto :goto_0

    .line 56
    :cond_1
    const-string/jumbo v0, "passive"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 57
    new-instance v0, Landroid/location/LocationPolicy;

    const/4 v1, 0x4

    const-string/jumbo v2, "passive"

    invoke-direct {v0, v1, v2, v4, p1}, Landroid/location/LocationPolicy;-><init>(ILjava/lang/String;ZI)V

    goto :goto_0

    .line 59
    :cond_2
    const-string v0, "fused"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 60
    new-instance v0, Landroid/location/LocationPolicy;

    const/4 v1, 0x3

    const-string v2, "fused"

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/location/LocationPolicy;-><init>(ILjava/lang/String;ZI)V

    goto :goto_0

    .line 63
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unknown location provider"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getMatchRuleName(I)Ljava/lang/String;
    .locals 1
    .param p0, "matchRule"    # I

    .prologue
    .line 153
    packed-switch p0, :pswitch_data_0

    .line 163
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 155
    :pswitch_0
    const-string v0, "NETWORK_PROVIDER"

    goto :goto_0

    .line 157
    :pswitch_1
    const-string v0, "GPS_PROVIDER"

    goto :goto_0

    .line 159
    :pswitch_2
    const-string v0, "FUSED_PROVIDER"

    goto :goto_0

    .line 161
    :pswitch_3
    const-string v0, "PASSIVE_PROVIDER"

    goto :goto_0

    .line 153
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 123
    instance-of v2, p1, Landroid/location/LocationPolicy;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 124
    check-cast v0, Landroid/location/LocationPolicy;

    .line 125
    .local v0, "other":Landroid/location/LocationPolicy;
    iget v2, p0, Landroid/location/LocationPolicy;->mMatchRule:I

    iget v3, v0, Landroid/location/LocationPolicy;->mMatchRule:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Landroid/location/LocationPolicy;->mProvider:Ljava/lang/String;

    iget-object v3, v0, Landroid/location/LocationPolicy;->mProvider:Ljava/lang/String;

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Landroid/location/LocationPolicy;->mHighCost:Z

    iget-boolean v3, v0, Landroid/location/LocationPolicy;->mHighCost:Z

    if-ne v2, v3, :cond_0

    iget v2, p0, Landroid/location/LocationPolicy;->mMinIntervalMs:I

    iget v3, v0, Landroid/location/LocationPolicy;->mMinIntervalMs:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 130
    .end local v0    # "other":Landroid/location/LocationPolicy;
    :cond_0
    return v1
.end method

.method public getMatchRule()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Landroid/location/LocationPolicy;->mMatchRule:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 118
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Landroid/location/LocationPolicy;->mMatchRule:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Landroid/location/LocationPolicy;->mHighCost:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Landroid/location/LocationPolicy;->mMinIntervalMs:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 2
    .param p1, "locationProvider"    # Ljava/lang/String;

    .prologue
    .line 138
    iget v0, p0, Landroid/location/LocationPolicy;->mMatchRule:I

    packed-switch v0, :pswitch_data_0

    .line 148
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unknown location provider"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :pswitch_0
    const-string/jumbo v0, "network"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 146
    :goto_0
    return v0

    .line 142
    :pswitch_1
    const-string/jumbo v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 144
    :pswitch_2
    const-string v0, "fused"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 146
    :pswitch_3
    const-string/jumbo v0, "passive"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LocationPolicy: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "matchRule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/LocationPolicy;->mMatchRule:I

    invoke-static {v2}, Landroid/location/LocationPolicy;->getMatchRuleName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const-string v1, ", provider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/location/LocationPolicy;->mProvider:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    const-string v1, ", highCost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/location/LocationPolicy;->mHighCost:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 112
    const-string v1, ", minInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/LocationPolicy;->mMinIntervalMs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 95
    iget v0, p0, Landroid/location/LocationPolicy;->mMatchRule:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget-object v0, p0, Landroid/location/LocationPolicy;->mProvider:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-boolean v0, p0, Landroid/location/LocationPolicy;->mHighCost:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget v0, p0, Landroid/location/LocationPolicy;->mMinIntervalMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    return-void

    .line 97
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
