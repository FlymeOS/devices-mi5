.class public Lmiui/hybrid/Response;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CODE_ASYNC:I = 0x2

.field public static final CODE_CALLBACK:I = 0x3

.field public static final CODE_CANCEL:I = 0x64

.field public static final CODE_CONFIG_ERROR:I = 0xc9

.field public static final CODE_FEATURE_ERROR:I = 0xcc

.field public static final CODE_GENERIC_ERROR:I = 0xc8

.field public static final CODE_PERMISSION_ERROR:I = 0xcb

.field public static final CODE_SIGNATURE_ERROR:I = 0xca

.field public static final CODE_SUCCESS:I = 0x0

.field public static final CODE_SYNC:I = 0x1

.field private static final yy:Ljava/lang/String; = "code"

.field private static final yz:Ljava/lang/String; = "content"


# instance fields
.field private fk:Lorg/json/JSONObject;

.field private hr:I

.field private yA:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 81
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lmiui/hybrid/Response;-><init>(ILjava/lang/String;)V

    .line 82
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lmiui/hybrid/Response;->fk:Lorg/json/JSONObject;

    .line 101
    iput p1, p0, Lmiui/hybrid/Response;->hr:I

    .line 102
    iput-object p2, p0, Lmiui/hybrid/Response;->yA:Ljava/lang/String;

    .line 104
    :try_start_0
    iget-object v0, p0, Lmiui/hybrid/Response;->fk:Lorg/json/JSONObject;

    const-string v1, "code"

    iget v2, p0, Lmiui/hybrid/Response;->hr:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 105
    iget-object v0, p0, Lmiui/hybrid/Response;->fk:Lorg/json/JSONObject;

    const-string v1, "content"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(ILorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lmiui/hybrid/Response;->fk:Lorg/json/JSONObject;

    .line 128
    iput p1, p0, Lmiui/hybrid/Response;->hr:I

    .line 129
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/hybrid/Response;->yA:Ljava/lang/String;

    .line 131
    :try_start_0
    iget-object v0, p0, Lmiui/hybrid/Response;->fk:Lorg/json/JSONObject;

    const-string v1, "code"

    iget v2, p0, Lmiui/hybrid/Response;->hr:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 132
    iget-object v0, p0, Lmiui/hybrid/Response;->fk:Lorg/json/JSONObject;

    const-string v1, "content"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 134
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lmiui/hybrid/Response;-><init>(ILjava/lang/String;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lmiui/hybrid/Response;-><init>(ILorg/json/JSONObject;)V

    .line 119
    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lmiui/hybrid/Response;->hr:I

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lmiui/hybrid/Response;->yA:Ljava/lang/String;

    return-object v0
.end method

.method public getJson()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lmiui/hybrid/Response;->fk:Lorg/json/JSONObject;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lmiui/hybrid/Response;->fk:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
