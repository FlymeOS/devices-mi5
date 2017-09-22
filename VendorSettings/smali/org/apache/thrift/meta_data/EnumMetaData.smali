.class public Lorg/apache/thrift/meta_data/EnumMetaData;
.super Lorg/apache/thrift/meta_data/FieldValueMetaData;
.source "EnumMetaData.java"


# instance fields
.field public final enumClass:Ljava/lang/Class;


# direct methods
.method public constructor <init>(BLjava/lang/Class;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    .line 27
    iput-object p2, p0, Lorg/apache/thrift/meta_data/EnumMetaData;->enumClass:Ljava/lang/Class;

    .line 28
    return-void
.end method
