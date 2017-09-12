.class public Lmiui/util/AudioOutputHelper$AudioOutputClient;
.super Ljava/lang/Object;
.source "AudioOutputHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/AudioOutputHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AudioOutputClient"
.end annotation


# instance fields
.field public mActive:Z

.field public final mProcessId:I

.field public final mSessionId:I

.field public final mStreamType:I


# direct methods
.method public constructor <init>(III)V
    .locals 1
    .param p1, "sessionId"    # I
    .param p2, "processId"    # I
    .param p3, "streamType"    # I

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lmiui/util/AudioOutputHelper$AudioOutputClient;-><init>(IIIZ)V

    .line 51
    return-void
.end method

.method public constructor <init>(IIIZ)V
    .locals 0
    .param p1, "sessionId"    # I
    .param p2, "processId"    # I
    .param p3, "streamType"    # I
    .param p4, "active"    # Z

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lmiui/util/AudioOutputHelper$AudioOutputClient;->mSessionId:I

    .line 44
    iput p2, p0, Lmiui/util/AudioOutputHelper$AudioOutputClient;->mProcessId:I

    .line 45
    iput p3, p0, Lmiui/util/AudioOutputHelper$AudioOutputClient;->mStreamType:I

    .line 46
    iput-boolean p4, p0, Lmiui/util/AudioOutputHelper$AudioOutputClient;->mActive:Z

    .line 47
    return-void
.end method
